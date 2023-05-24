<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;
use App\Mail\ForgotPasswordMail;
use Illuminate\Http\Request;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use App\ServicesMy\MailService;
use Nullix\CryptoJsAes\CryptoJsAes;
use App\User;
use Validator;
use Response;
use Session;
use Auth;
use Mail;

class ForgotPasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password reset emails and
    | includes a trait which assists in sending these notifications from
    | your application to your users. Feel free to explore this trait.
    |
    */

    use SendsPasswordResetEmails;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * This is for send forgot password link via email.
     *
     * @return \Illuminate\Http\Response
     */

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
        
        $vcode = random_int(100000, 999999); 
        
        User::where('email',$decrypted['email'])->update(['remember_token'=>$vcode]);
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

