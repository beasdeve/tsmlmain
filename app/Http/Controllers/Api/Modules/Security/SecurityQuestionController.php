<?php

namespace App\Http\Controllers\Api\Modules\Security;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Tymon\JWTAuth\Exceptions\JWTException;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\Models\SecurityQuestion; 
use App\Models\Models\SecurityQuestionAnswer;
use App\ServicesMy\MailService; 
use App\ServicesMy\AdminLogsService;
use JWTAuth;
use Validator;
use Hash;
use Response; 
use Nullix\CryptoJsAes\CryptoJsAes;

class SecurityQuestionController extends Controller
{
    /**
         * This is for store new Security Question.
         *
         * @param  \App\Product  $product
         * @return \Illuminate\Http\Response
         */
   	public function StoreSecurityQue(Request $request)
   	{ 
   		 
   		\DB::beginTransaction();

   		try{

   			$validator = Validator::make($request->all(), [
                's_question'        => 'required', 
	        ]);

	        if ($validator->fails()) { 
	            return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $validator->errors()],config('global.failed_status'));
	        }

	        $input['s_question'] = $request->s_question;
    	   	$input['status'] = 0; 

    	   	$freightsData = SecurityQuestion::create($input);

          // $user = Auth::user()->id;
          // $sub = 'Security Question added';
          // $purpose = 'Security Question added';

          // $res = (new AdminLogsService)->adminlogs($user,$sub,$purpose);

    	   	\DB::commit();

    	   	if($freightsData)
                {
		            return response()->json(['status'=>1,'message' =>'Security question added successfully','result' => $freightsData],config('global.success_status'));
		        }
		        else{ 
		         	return response()->json(['status'=>1,'message' =>'Somthing went wrong','result' => []],config('global.success_status'));
		        } 
    		 

   		}catch(\Exception $e){ 
    	  	\DB::rollback(); 
           	return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
        }
    }

    /**
     * This is for show Security Question . 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function getSecurityQueAdmin(Request $request)
    {
        
        try{         
        $data = SecurityQuestion::orderBy('id','desc')->get();

        $squadata = [];
        foreach ($data as $key => $value) 
        {

          $sqdata['security_question_id'] = $value->id;
          $sqdata['s_question'] = $value->s_question; 
          $sqdata['q_status'] = $value->status; 
          
          $squadata[] = $sqdata;
        } 
          
        return response()->json(['status'=>1,'message' =>'success.','result' => $squadata],200);
          
          
        
        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return response()->json([$response]);
        }
    }

    /**
       * This is for show Security Question details before edit for admin.
       *
       * @param  \App\Product  $product
       * @return \Illuminate\Http\Response
      */
      public function editSecurityQue($secqueId)
      {
         
        $catData = SecurityQuestion::find($secqueId);

        if (!empty($catData)) 
        {   
                
          $getsqdata['security_question_id'] = $catData->id;
          $getsqdata['s_question'] = $catData->s_question; 
          $getsqdata['q_status'] = $catData->status;

           
          return response()->json(['status'=>1,'message' =>'success','result' => $getsqdata]); 
 
        }
        else{
          return response()->json(['status'=>0,'message'=>'No data found']);
        }
      }

      /**
       * This is for update Security Question for admin.
       *
       * @param  \App\Product  $product
       * @return \Illuminate\Http\Response
      */

        public function updateSecurityQue(Request $request)
        {
        // dd($request->all());
          try{
           $srch_reg=SecurityQuestion::where('id',$request->secqueid)->first();
           
           if($srch_reg)
           { 
           
            $validation = \Validator::make($request->all(),[ 
              's_question'        => 'required',
              'secqueid'        => 'required'
            ]);

              if ($validation->fails()) {
                return response()->json(['status'=>0,'errors'=>$validation->errors()],200);
              }

              
              $updatecat['s_question'] = $request->s_question; 

              $categoryData = SecurityQuestion::where('id',$srch_reg->id)->update($updatecat); 

              $catData = SecurityQuestion::where('id',$srch_reg->id)->first();

              

              return response()->json(['status'=>1,'message' =>'Security question updated successfully.'] );

            
           }
           else
           {
            return response()->json(['status'=>1,'message' =>'This id does not exists for update'] );
              
           }
          
           
        } catch (\Throwable $th) {
           $response['error']['message'] = $th->getMessage();
           return Response::json($response);
        } 
       }
      

    /**
     * This is for show Security Question . 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function getSecurityQue(Request $request)
    {
        
        try{         
        $data = SecurityQuestion::where('status','!=',1)->orderBy('id','desc')->get();

        $squadata = [];
        foreach ($data as $key => $value) 
        {

        	$sqdata['security_question_id'] = $value->id;
        	$sqdata['s_question'] = $value->s_question; 
          
        	$squadata[] = $sqdata;
        } 
          
        return response()->json(['status'=>1,'message' =>'success.','result' => $squadata],200);
          
          
        
        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return response()->json([$response]);
        }
    }



        /**
         * This is for store new Security Question answer by user id.
         *
         * 
         * @return \Illuminate\Http\Response
         */
    public function saveSecurityQstAns(Request $request)
    { 
       
      \DB::beginTransaction();

      try{
       
        // $validator = Validator::make($request->all(), [
        //         'securityone'        => 'required',
        //         'answoreone'        => 'required', 
        //         'securitytwo'        => 'required',
        //         'answoretwo'        => 'required', 
                
        //   ]);

        //   if ($validator->fails()) { 
        //       return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $validator->errors()],config('global.failed_status'));
        //   }
          // dd($request->all());
        $encrypted = json_encode($request->all());
        // $json = json_encode($encrypted1);
      $password = "123456";

      $decrypted = CryptoJsAes::decrypt($encrypted, $password);
      // dd($decrypted['password']);
        
        foreach ($decrypted as $key => $value) {

             $id = User::where('email',$value['email'])->first();
            
              $input['question_id'] = $value['securityone'];
              $input['answer'] = $value['answoreone'];
              $input['user_id'] = $id->id;
              $input['status'] = 0; 
             // dd($input);
            SecurityQuestionAnswer::create($input);
        }
          

          \DB::commit();

         
                return response()->json(['status'=>1,'message' =>'Security question answer saved successfully','result' => 1],config('global.success_status'));
           
         

      }catch(\Exception $e){ 
          \DB::rollback(); 
            return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
        }
    }


    public function securityQstnMail(Request $request)
    {
         $cc_email = array();
         
         $permitted_chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
          $input_length = strlen($permitted_chars);
        $random_string = '';
        for($i = 0; $i < 12; $i++) {
            $random_character = $permitted_chars[mt_rand(0, $input_length - 1)];
            $random_string .= $random_character;
        }
         
         $password = Hash::make($random_string);


         // echo "<pre>";print_r($password);exit();
         $email = $request->input('email');

         User::where('email',$email)->update(['password' => $password,'login_count' => 0,'user_status' => NULL]);
       
         $cc_email = "";

         $sub = 'Your password has been updated';
 
         $html = 'mail.securitymail';

         $data['password'] = $random_string;

        (new MailService)->dotestMail($sub,$html,$email,$data,$cc_email);


         $msg = "Mail sent successfully";
         return response()->json(['status'=>1,'message' =>$msg],200);
    }



        /**
         * This is for store new Security Question answer by user id.
         *
         * 
         * @return \Illuminate\Http\Response
         */
    public function securityQstnMatch(Request $request)
    { 
       
      \DB::beginTransaction();

      try{
       
        $secu = array();
        foreach ($request->all() as $key => $value) {
            
              $user = User::where('email',$value['email'])->first();
              // $input['question_id'] = $value['securityone'];
              // $input['answer'] = $value['answoreone'];
              // $input['user_id'] = $value['id'];
              // $input['status'] = 0; 
             // dd($value['answoreone']);
              // dd($value['securityone']);
              if(!empty($user))
              {
          $ans = SecurityQuestionAnswer::where('user_id',$user->id)
          ->where('question_id',$value['securityone'])->first();
          // dd($ans);
         if(!empty($ans))
         {
          if($value['answoreone'] === $ans->answer)
          {
              $val = 1;
          }else{
              
              $val = 0;
          }

          array_push($secu,$val);
        }
        }
        }
          // dd($secu);
        if(!empty($secu) & count($secu) ==2)
        {
          if(in_array("0", $secu))
          {
             $result = false;
          }else{
             $result = true;
          }
        }else{

           $result = false;
        }

          \DB::commit();

         
                return response()->json(['status'=>1,'result' => $result],config('global.success_status'));
           
         

      }catch(\Exception $e){ 
          \DB::rollback(); 
            return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
        }
    }
}
