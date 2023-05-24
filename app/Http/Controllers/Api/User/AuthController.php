<?php

namespace App\Http\Controllers\Api\User;

use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Tymon\JWTAuth\Exceptions\JWTException;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Admin;
use App\Models\Address;
use JWTAuth;
use Validator;
use App\Models\Models\OtpVerification;
use App\Models\Models\RegistrationLog;
use App\Mail\Register;
use App\ServicesMy\MailService;
use Illuminate\Support\Facades\Hash;
use PHPMailer\PHPMailer\PHPMailer;
use Response;
use Mail;
use DB;
use DateTime;
use Nullix\CryptoJsAes\CryptoJsAes;

class AuthController extends Controller
{
  public function register(Request $request)
  {
      // dd($request->all());
      // jwt key -  i4qBSBNxEQ6XHhJcykjX2PxeXmB9a1nVhZwMlXz4fwsBwCBCoKmkxDEhrXTeUHo0
      $validator = Validator::make($request->all(), [
          'email' => 'required|string|email|max:255|unique:users',
          'name' => 'required',
          'phone' => 'required',
          'password'=> 'required'
      ]);
      if ($validator->fails()) {
          return response()->json($validator->errors());
      }
      $user = new User();
      $user->name = $request->name;
      $user->email = $request->email;
      $user->phone = $request->phone;
      $user->password = bcrypt($request->password);
      $user->save();
      $user = User::first();
      $token = JWTAuth::fromUser($user);
 

      return response()->json([
          'success' => true,
          'token' => $token,
      ]);
  }

  /**
    * Get a JWT via given credentials.
    *
    * @return \Illuminate\Http\JsonResponse
    */
   public function sendLoginOtp(Request $request)
   {
     // dd($request->all());

      $encrypted = json_encode($request->all());
        // $json = json_encode($encrypted1);
      $password = "123456";

      $decrypted = CryptoJsAes::decrypt($encrypted, $password);
      // dd($decrypted['password']);
      $validator = Validator::make($decrypted, [
            // 'email' => 'required|string|email|max:255',
            'password'=> 'required',
            'email' => ['required', 'string','max:255','regex:/^\w+[-\.\w]*@(?!(?:myemail)\.com$)\w+[-\.\w]*?\.\w{2,4}$/']
            
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors());
        }
 
        // $input = $request->only('email', 'password');
        $input = $decrypted;
        $jwt_token = null;


        // --------- registration logs ------------------------
            $chklog = RegistrationLog::where('user_email',$decrypted['email'])->first();
            if(!empty($chklog))
            {  
              
              $date1 = date_create($chklog->created);
              $date2 = date_create(date('Y-m-d'));
              $diff = date_diff($date1,$date2);
              // dd($diff->format("%R%a"));
               if($diff->format("%R%a") > 60)
               {
                  $temppass = rand(100000,999999);
                  $input['password'] = \Hash::make($temppass);
                  $saveuser = User::where('email',$decrypted['email'])->update($input);
                  return response()->json([
                  'success' => false,'status' => 2,'message' => 'Password has been expired. Please reset your password.']);
               }

            }

            // -----------------------------------------------------

        if (!$jwt_token = JWTAuth::attempt($input)) {
            // dd($input);
            $chkuser = User::where('email',$decrypted['email'])->first();
             
           
            if ($chkuser == null) {
              return response()->json([
                'success' => false,'message' => 'Invalid Email']);
            }
            $chkuserpass  = \Hash::check($decrypted['password'], $chkuser->password);
            if ($chkuserpass == false) {
                return response()->json([ 
                'success' => false,'message' => 'Invalid Password']);
               
              } 
            }
            else{ 
                   $chkuserd = User::where('email',$decrypted['email'])->first();
                   // dd('oknew');
                   if ($chkuserd->user_status == 3) {
                     // $userdata['login_attempt'] = $chkuserd->login_attempt;
                    // dd('ji');
                    return response()->json([
                    'success' => false,'message' => 'Your account is block please contact admin.']);
                   }
                   else if ($chkuserd->login_attempt == 1) {
                     $userdata['login_attempt'] = $chkuserd->login_attempt;
                    // dd('ji');
                    return response()->json([
                    'success' => false,'message' => 'Please reset your password on first login.','result' =>$chkuserd->login_attempt]);
                   }
                   else{
                    $otp = random_int(100000, 999999); 
                    $inputotp['login_otp'] = $otp;

                    $datestime = date("Y-m-d H:i:s");
                    // $endTime = strtotime("+3 minutes", strtotime($datestime));
                    // $dtime =  date('Y-m-d h:i:s', $endTime);
                    // dd($datestime,$dtime);

                     
                    $inputotp['otp_expires_time'] =$datestime; 
                    $categoryData = User::where('email',$decrypted['email'])->update($inputotp); 
                    $sub = "OTP For Login";
                    $html = 'mail.Otpverificationmail';
                    $data['otp'] = $otp;
                    $cc_email = "";
                    $email = $decrypted['email'];
                    
                    (new MailService)->dotestMail($sub,$html,$email,$data,$cc_email); 
           
                    $msg = "OTP has been sent to this email address ".$decrypted['email']." successfully.";

                    $getuser = User::where('email',$decrypted['email'])->first(); 
                    $userdata['email'] = $decrypted['email'];
                    $userdata['otp_status'] = 1;
                    $userdata['login_attempt'] = 2;
                    // dd('ji');
                    return response()->json([
                    'success' => true,'status'=>1,'message' => $msg,'result' =>$userdata]);
                   }
                  
                  //return response()->json(['status'=>1,'message' =>$msg,'result' =>$userdata]);
                    
                 

            // -----------------------------------------------------


              } 

   }

   /**
    * Get a JWT via given credentials.
    *
    * @return \Illuminate\Http\JsonResponse
    */
   public function login(Request $request)
   {
       // $credentials = request(['email', 'password']);
 
       // if (! $token = auth()->attempt($credentials)) {
       //     return response()->json(['error' => 'Unauthorized'], 401);
       // }
 
       // return $this->respondWithToken($token);

       // dd($request->all());
     $encrypted = json_encode($request->all());
        // $json = json_encode($encrypted1);
      $password = "123456";

      $decrypted = CryptoJsAes::decrypt($encrypted, $password);
      // dd($decrypted);

        $validator = Validator::make($decrypted, [
            'email' => ['required', 'string','max:255','regex:/^\w+[-\.\w]*@(?!(?:myemail)\.com$)\w+[-\.\w]*?\.\w{2,4}$/'],
            'password'=> 'required'
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors());
        }
 
        $input = [
                   "email" => $decrypted['email'],
                   "password" => $decrypted['password']
                 ];
        $jwt_token = null;
        
        // dd($jwt_token);

          // --------- registration logs ------------------------
            $chklog = RegistrationLog::where('user_email',$decrypted['email'])->first();
            if(!empty($chklog))
            {  

              $date1 = date_create($chklog->created);
              $date2 = date_create(date('Y-m-d'));
              $diff = date_diff($date1,$date2);
              // dd($diff->format("%R%a"));
               if($diff->format("%R%a") > 60)
               {
                  $temppass = rand(100000,999999);
                  $input['password'] = \Hash::make($temppass);
                  $saveuser = User::where('email',$decrypted['email'])->update($input);
                  return response()->json([
                  'success' => false,'status' => 2,'message' => 'Password expired.']);
               }

            }

            // -----------------------------------------------------
   
        if (!$jwt_token = JWTAuth::attempt($input)) {
            // dd($jwt_token);
            $chkuser = User::where('email',$decrypted['email'])->first();
             
            // dd($chkusermail);
            // \Hash::check($request->password, $user->password)
           
            // dd($chkuserpass);
            if ($chkuser == null) {
              return response()->json([
                'success' => false,'message' => 'Invalid Email']);
            }



            $chkuserpass  = \Hash::check($decrypted['password'], $chkuser->password);
            if ($chkuserpass == false) {

              $userid = $chkuser->id;
              // dd($userid);
              $userlogin_count = $chkuser->login_count;
              // dd($userlogin_count);
              $cval['login_count'] = $userlogin_count + 1;
              $chkusers = User::where('id',$userid)->update($cval);
              $countchk = User::where('id',$userid)->first();
               
              if ($countchk->login_count==4) { 
               $datass['user_status'] = $chkuser->user_status;
                $datass['user_email'] = $chkuser->email;
                return response()->json([
                'success' => false,'message' => 'Invalid password you have only one attempt left.','result' => $datass]); 
              }
              if ($countchk->login_count==5) {
                $upuser['user_status'] = 2;
                $chkusers = User::where('id',$userid)->update($upuser);
                $userdata = User::where('id',$userid)->first();
                $data['user_status'] = $userdata->user_status;
                $data['user_email'] = $userdata->email;
                return response()->json([
                  'success' => false,'message' => 'Your account has been blocked.','result' => $data]);
              } 
              if ($countchk->login_count>5) {
              $userdata = User::where('id',$userid)->first();
                $data['user_status'] = $userdata->user_status;
                $data['user_email'] = $userdata->email; 
                return response()->json([
                  'success' => false,'message' => 'Your account has been blocked.','result' => $data]);
              } 
              else{
                $data2['user_status'] = $chkuser->user_status;
                $data2['user_email'] = $chkuser->email;
                return response()->json([ 
                'success' => false,'message' => 'Invalid Password','result' => $data2]);
              }
              
            } 
        }
        
        $authChk = Auth::user()->is_loggedin;
        // dd($id);
        if($authChk == 0 && Auth::user()->jwt_token == NULL)
        {
          // dd($decrypted);
            if (Auth::user()->login_otp == $decrypted['logotp']) {
              // dd('ok to login');
              $userdata = User::where('id',Auth::user()->id)->first(); 

              $datetime_1 = $userdata->otp_expires_time;
              $datetime_2 = date("Y-m-d H:i:s");

              // dd($datetime_1,$datetime_2);

              $to = \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $datetime_1);
              $from = \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $datetime_2); 
              $diff_in_minutes = $to->diffInMinutes($from);
              

              // $from_time = strtotime($datetime_1);
              // $to_time = strtotime($datetime_2);
              // $diff_minutes = round(abs($from_time - $to_time) / 60,2);
              
              // dd($datetime_1,$datetime_2,$diff_minutes,$diff_in_minutes);
              if ($diff_in_minutes>3) 
              {
               return response()->json(['success' => false,'message' => 'OTP expired !!']);
              }
              else{
              
                $userArr['user_id'] = $userdata->id;
                $userArr['user_name'] = $userdata->org_name;
                $userArr['user_type'] = $userdata->user_type;
                $updata['is_loggedin'] = 1;
                $updata['login_count'] = 0;
                $updata['login_otp'] = NULL;
                $updata['jwt_token'] = $jwt_token;
                $upuser = User::where('id',Auth::user()->id)->update($updata);
                return response()->json([
                    'success' => true,
                    'data' => $userArr,
                    'login_attempt' => Auth::user()->login_attempt,
                    'token' => $jwt_token,
                ]);
              }
              
            }
            else{
              return response()->json([
                'success' => false,
                'message' => 'Invalid OTP please check',
            ]);
            }
            
      }else{
          
           return response()->json([
                'success' => false,
                'message' => 'You are already logged in, please logout from there',
            ]);

      }
   }
 
   /**
    * Get the authenticated User.
    *
    * @return \Illuminate\Http\JsonResponse
    */
   public function me()
   {
       $response = [];
       $response['customer_information'] = User::select('name','email','phone')->where('id',auth()->user()->id)->first();
       $response['customer_kyc'] = User::select('company_gst','company_pan')->where('id',auth()->user()->id)->first();
       $response['shipping_address'] = Address::where('user_id',auth()->user()->id)->where('type','A')->get();
       $response['billing_address'] = Address::where('user_id',auth()->user()->id)->where('type','B')->get();
       $response['documents'] =  User::select('address_proof_file','cancel_cheque_file','pan_card_file','gst_certificate','turnover_declare','itr_last_yr','form_d','registration_certificate','tcs')->where('id',auth()->user()->id)->first();
       $response['file_link'] = asset('https://beas.in/mje-shop/storage/app/public/user');
       $response['success'] = true;
       return $response;
   }

    public function updateMobileNUmber(Request $request)
    {
      $encrypted = json_encode($request->all());
        // $json = json_encode($encrypted1);
      $password = "123456";

      $decrypted = CryptoJsAes::decrypt($encrypted, $password);

      // dd($request->all());
      $validator = Validator::make($decrypted, [
          'mobile_no'=>'required|digits:10',
      ]);
      
      if ($validator->fails()) {
          return response()->json($validator->errors());
      }

      $chkmob = OtpVerification::where('email',$decrypted['email'])->where('mob_number',$decrypted['mobile_no'])->first(); 

        // dd($chkmob);
        if ($chkmob!=null) {
         if(!empty($chkmob->otp) && $chkmob->is_verified == 1)
          {
            // dd('OTP already send to this email addess.');
              return response()->json(['status'=>0,'message' => 'OTP already sent to this email addess.'.$decrypted['email']]); 
          }
          else if(empty($chkmob->otp) && $chkmob->is_verified == 2)
          {
            // dd('This mobile number already verified.');
              return response()->json(['status'=>0,'message' =>'This mobile number already verified.']); 
          }
        } 
        else
        { 
          // dd('mail send');
              $user_email = User::where('email',$decrypted['email'])->first();
              $chkuser = User::where('phone',$decrypted['mobile_no'])->where('id','!=',$user_email->id)->get()->toArray();
              // dd($chkuser);
              if(!empty($chkuser))
              {
                // dd('of');
                return response()->json(['status'=>0,'message' => 'Mobile number already exists.']);

              
            }else{
               
               

              $datestime = date("Y-m-d H:i:s");
              // $endTime = strtotime("+3 minutes", strtotime($datestime));
              // $dtime =  date('Y-m-d h:i:s', $endTime);

              $otp = random_int(100000, 999999);

              $input['mob_number'] = $decrypted['mobile_no'];
              $input['email'] = $decrypted['email'];
              $input['otp'] = $otp;
              $input['mobotp_expires_time'] = $datestime;

              $categoryData = OtpVerification::create($input);  

              $sub = "OTP for Mobile Verification";
              $html = 'mail.Otpverificationmail';
              $data['otp'] = $otp;
              $cc_email = "";
              $email = $decrypted['email'];

              (new MailService)->dotestMail($sub,$html,$email,$data,$cc_email); 
     
              $msg = "OTP has been sent to this email address ".$decrypted['email']." successfully.";
              $userdata['mob_number'] = $decrypted['mobile_no'];
              $userdata['email'] = $decrypted['email'];

              $password = "123456";
              $encrypted = CryptoJsAes::encrypt($userdata, $password);

              return response()->json(['status'=>1,'message' =>$msg,'result' =>$encrypted],200);
                
            }
            
        }
      }

      /**
       * This is for validate user mobile OTP.
       *
       * @return \Illuminate\Http\Response
      */
      public function verifyMobileOtpUser(Request $request)
      {

        $encrypted = json_encode($request->all());
        // $json = json_encode($encrypted1);
        $password = "123456";

        $decrypted = CryptoJsAes::decrypt($encrypted, $password);

        $validator = Validator::make($decrypted, [ 
            'mobile_no' =>'required|digits:10',
            // 'email' =>'required|email',
            'email' => ['required', 'string','max:255','regex:/^\w+[-\.\w]*@(?!(?:myemail)\.com$)\w+[-\.\w]*?\.\w{2,4}$/'], 
            'otp' =>'required|digits:6',              
        ],
        [   
            'mobile_no.required'=>'Mobile is required',
            'otp.required'=>'OTP is required',               
        ]
        );

        if ($validator->fails()) {
            $response['error']['validation'] = $validator->errors();
            return Response::json($response);
        }
        $chkmob = OtpVerification::where('email',$decrypted['email'])->where('mob_number',$decrypted['mobile_no'])->first();
        // dd($chkmob);
        if (!empty($chkmob)) 
        {
            if($chkmob->otp == null && $chkmob->is_verified == 2)
            {
                return response()->json(['status'=>0,'message' => array('Your mobile number already verified.')]); 
            }
            else
            {
                if(!empty($chkmob->otp) && $chkmob->is_verified != 2)
                {
                    if ($chkmob->otp == $decrypted['otp']) 
                    {

                      

                      $datetime_1 = $chkmob->mobotp_expires_time;
                      $datetime_2 = date("Y-m-d H:i:s");

                      $from_time = strtotime($datetime_1);
                      $to_time = strtotime($datetime_2);
                      $diff_minutes = round(abs($from_time - $to_time) / 60,2);
                       // dd($datetime_1,$datetime_2,$diff_minutes);
                      // dd($diff_minutes);

                      if ($diff_minutes>3) {
                        return response()->json(['status'=>0,'message' => array('OTP expired !!')]);
                           // return response()->json(['status'=>0,'message' =>'OTP expired !!']);
                          // $response['error']['message'] = "OTP expired !!";
                          //     return Response::json($response);  
                           
                      }
                      else{
                        $input['is_verified'] = 2;
                        $input['otp'] = '';

                        $categoryData = OtpVerification::where('mob_number',$decrypted['mobile_no'])->where('otp',$chkmob->otp)->update($input); 

                        User::where('email',$request->email)->update(['phone'=>$decrypted['mobile_no']]);
                        $response['success'] = true;
                        $response['message'] = 'Mobile Number Updated Successfully';
                        return $response;

                      }

                        
                 
                        // return response()->json(['status'=>1,'message' =>'Verification successfully.','result' => $chkmob],200);
                    }
                    else
                    {
                        return response()->json(['status'=>0,'message' => array('Invalid OTP please check')]);
                    }

                }
                else
                {
                    return response()->json(['status'=>0,'message' => array('OTP already sent to this mobile number '.$decrypted['mobile_no'])]);
                }

            }

        }
        else
        {
            return response()->json(['status'=>0,'message' => array('Somthing wrong please check.')]);
        }

      }




      // User::where('id',auth()->user()->id)->update(['phone'=>$request->mobile]);
      // $response['success'] = true;
      // $response['message'] = 'Mobile Number Updated Successfully';
      // return $response;
  
 
   /**
    * Log the user out (Invalidate the token).
    *
    * @return \Illuminate\Http\JsonResponse
    */
   public function logout()
   {

       $updata['is_loggedin'] = 0;
       $updata['jwt_token'] = NULL;
       $upuser = User::where('id',Auth::user()->id)->update($updata);
       auth()->logout();
       
       return response()->json(['message' => 'Successfully logged out']);
   }

      /**
    * Log the user out (Invalidate the token).
    *
    * @return \Illuminate\Http\JsonResponse
    */
   public function fologout(Request $request)
   {

       $email = $request->input('email');
       // dd($email);
        $chkuser = User::where('email',$email)->first();
   
        if(!empty($chkuser))
        {
          // dd('ok');
          $updata['is_loggedin'] = 0;
          $updata['jwt_token'] = NULL;
          $upuser = User::where('email',$chkuser->email)->update($updata);
          

          return response()->json([
                'success' => true,
                'message' => 'Logout Successfully.',
            ]);
        }else{

            return response()->json([
                'success' => false,
                'message' => 'Invalid email',
            ]);

        }
       
       
       
   }
 
   /**
    * Refresh a token.
    *
    * @return \Illuminate\Http\JsonResponse
    */
   public function refresh()
   {
       return $this->respondWithToken(auth()->refresh());
   }
 
   /**
    * Get the token array structure.
    *
    * @param  string $token
    *
    * @return \Illuminate\Http\JsonResponse
    */
   protected function respondWithToken($token)
   {
       return response()->json([
           'access_token' => $token,
           'token_type' => 'bearer',
           'expires_in' => auth()->factory()->getTTL() * 60
       ]);
   }


   public function updateLoggedin(Request $request)
   { 

         $id = $request->input('id');
         $val = $request->input('value');
        $res = User::where('id',$id)->update(['is_loggedin' => $val]);

        return response()->json([
           'status' => 1,
           'message' => 'updated'
       ]);
   }


    public function getsavetoken(Request $request)
   {

        $id = $request->userid;
        $chkuser = User::where('id',$id)->first();
   
        if(!empty($chkuser))
        {
          // dd('ok');
          $data['token'] = $chkuser->jwt_token;
          

          return response()->json([
                'success' => true,
                'message' => 'Success',
                'result'  => $data,
            ]);
        }else{

            return response()->json([
                'success' => false,
                'message' => 'Invalid id',
            ]);

        }
       
       
       
   }


       /**
    * Log registration date.
    *
    * @return \Illuminate\Http\JsonResponse
    */
   public function regisdatelog(Request $request)
   {

       $email = $request->input('email');
       // dd($email);
        $chkuser = User::where('email',$email)->first();
   
        if(!empty($chkuser))
        {

          // dd('ok');
          $updata['user_email'] = $request->input('email');
          $updata['user_id'] = $chkuser->id;
          $updata['created'] = date('Y-m-d');
          $updata['status'] = 1;

          // dd($updata);
          $upuser = RegistrationLog::create($updata);
          

          return response()->json([
                'success' => true,
                'message' => 'Logout Successfully.',
            ]);
        }else{

            return response()->json([
                'success' => false,
                'message' => 'Invalid email',
            ]);

        }
       
       
       
   }



    public function sendResetLinkEmail(Request $request)
    { 
        $encrypted = json_encode($request->all());
        // $json = json_encode($encrypted1);
        $password = "123456";

        $decrypted = CryptoJsAes::decrypt($encrypted, $password);
        // dd($decrypted['email']);

        $validator = Validator::make($decrypted, [
                'email' => ['required', 'string', 'email', 'max:255','regex:/^\w+[-\.\w]*@(?!(?:myemail)\.com$)\w+[-\.\w]*?\.\w{2,4}$/'],   
            ]);

        if ($validator->fails()) {
                $response['error']['validation'] = $validator->errors();
                return Response::json($response);
            }

        $data['email'] = $decrypted['email'];
        $user = User::where('email',$decrypted['email'])->first();
         
        if(!@$user){
            $response['error']['message'] = "No record found.";
            return Response::json($response); 
        }
        if ($user->user_status == 3) {
         // $userdata['login_attempt'] = $chkuserd->login_attempt;
          // dd('ji');
          $response['error']['message'] = "Your account is block please contact admin.";
            return Response::json($response);
         
         }
        else{

           $datestime = date("Y-m-d H:i:s");
        // $endTime = strtotime("+3 minutes", strtotime($datestime));
        // $dtime =  date('Y-m-d h:i:s', $endTime);
        // dd($datestime,$dtime);

         
         
          $vcode = random_int(100000, 999999); 
          
          User::where('email',$decrypted['email'])->update(['remember_token'=>$vcode,'otp_expires_time'=>$datestime]);
          // $data['OTP'] =  $vcode;
          // $data['name'] = $user->name;
          // $data['email'] = $user->email;

          $mailSub = 'Forgot Password';
          $mailTemplateBlade = 'mail.forgot_password'; 
          $sentTo = $user->email;
          $mailData['OTP'] = $vcode;
          $mailData['name'] = $user->name; 
           // dd($mailData);
          (new MailService)->dotestMail($mailSub,$mailTemplateBlade,$sentTo,$mailData);
           
          
          // Mail::send(new ForgotPasswordMail($data));
          return response()->json(['status'=>1,'message' =>'A OTP send to your email address for reset your password .'],200);

        }
         
        
    }


      public function reset(Request $request)
    {
        // dd($request->all());
        // $this->validate($request, [
        //     'otp' =>'required|numeric|min:6|max:6',
        //     'password' =>'required|string|min:6|required_with:password-confirm', 
        //     'password_confirm' =>'required|required_with:password|same:password',
        // ],
        // [   'otp.required'=>'OTP is required.',
        //     'password_confirm.same'=>'The confirm password and password must match.',
        //     'password_confirm.required'=>'The confirm password field is required']);
           $encrypted = json_encode($request->all());
        // $json = json_encode($encrypted1);
           $password = "123456";

           $decrypted = CryptoJsAes::decrypt($encrypted, $password);

        $validator = Validator::make($decrypted, [
                'email' =>'required|string|email|max:255',
                'otp' =>'required|numeric|digits:6',
                'password' =>'required|string|min:10|required_with:password-confirm', 
                'password_confirm' =>'required|required_with:password|same:password',   
            ],
            [   'otp.required'=>'OTP is required.',
                'otp.digits'=>'Enter your 6 digits OTP.',
                'password_confirm.same'=>'The confirm password and password must match.',
                'password_confirm.required'=>'The confirm password field is required'
            ]
        );

        if ($validator->fails()) {
                $response['error']['validation'] = $validator->errors();
                return Response::json($response);
            }

        $chkOtp = User::where('remember_token',$decrypted['otp'])->where('email',$decrypted['email'])->first();
        // dd($chkOtp);
        if(!@$chkOtp){
            $response['error']['message'] = "Invalid OTP or email please check !!";
            return Response::json($response);
             
        }
        else{

            $userdata = User::where('id',$chkOtp->id)->first();


              $datetime_1 = $userdata->otp_expires_time;
              $datetime_2 = date("Y-m-d H:i:s");

              // dd($datetime_1,$datetime_2);

              $from_time = strtotime($datetime_1);
              $to_time = strtotime($datetime_2);
              $diff_minutes = round(abs($from_time - $to_time) / 60,2);
              if ($diff_minutes>3) {
                $response['error']['message'] = "OTP expired !!";
                    return Response::json($response);  
                 
              }
              else{

                if($decrypted['password'] == $decrypted['password_confirm'] && $decrypted['password']){
                 // dd($request->password);
                $remember_token = $decrypted['otp']; 
                $update['password'] = Hash::make($decrypted['password']);
                $update['remember_token'] = '';
                // dd($update);
                $user = User::Where('remember_token',$remember_token)->update($update);
                if($user) {
                    return response()->json(['status'=>1,'message' =>'Password changed successfully !!'],200);
                     
                } else {
                    $response['error']['message'] = "Somthing went be wrong";
                    return Response::json($response); 
                }
                } else {
                    $response['error']['message'] = "Password and Confirm Password not matched";
                    return Response::json($response);  
                }

              }

             
        }

        


    }


 
}