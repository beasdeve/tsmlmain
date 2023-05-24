<?php

namespace App\Http\Controllers\Api\Modules\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\ServicesMy\MailService;
use DB;
use App\Models\Admin;
use App\ServicesMy\AdminLogsService;
use Hash;

class AdminPasswordController extends Controller
{
               /**
    	* PO by po no.
     	*
     	* @param  \App\Orders
     	* @return \Illuminate\Http\Response
    */

	  public function adminForgetpassMail(Request $request)
      {
       \DB::beginTransaction();

       try{

          $email = $request->email;

          $otp = random_int(100000, 999999); 

          $chk = Admin::where('email',$email)->first();
          
          if(!empty($chk))
          {

          	   $arr['remember_token'] = $otp;

          	   Admin::where('email',$email)->update($arr);
               
               $cc_email = "";
               $sub = "Admin forget password OTP";
               $data['OTP'] = $otp;
               $html = "mail.adminforgetpassmail";
	          // dd($chk);

	          \DB::commit();
	          
	          (new MailService)->dotestMail($sub,$html,$email,$data,$cc_email);
	     

	         $msg = "Mail sent successfully";
	         return response()->json(['status'=>1,'message' =>$msg],200);
         }else{

         	$msg = "Email does not exists";
	         return response()->json(['status'=>1,'message' =>$msg],200);
         }



     }catch(\Exception $e){

       \DB::rollback();

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }
   }



      /**
    	* update password
     	*
     	* @param  \App\Orders
     	* @return \Illuminate\Http\Response
    */

	  public function adminUpdatePass(Request $request)
      {
      	  $email = $request->email;
          $otp = $request->otp;
          $password = $request->password;

          $chk = Admin::where('email',$email)->first();

           if(!empty($chk))
           {
           	  if($chk->remember_token == $otp)
           	  {
          	   $datetime_1 = $chk->updated_at;
               $datetime_2 = date("Y-m-d H:i:s");
		        // dd($datetime_1);
		        $from_time = strtotime($datetime_1);
		        $to_time = strtotime($datetime_2);
		        // dd($from_time,$to_time);
		        $diff_minutes = round(abs($from_time - $to_time) / 60,2);
                // dd($diff_minutes);
              if($diff_minutes <= 3)
          	   {
		           $updata['password'] = \Hash::make($password);
		           $updata['remember_token'] ='';

		           $d= Admin::where('email',$email)->update($updata);
		           // dd('ok');
		           return response()->json(['status'=>1,'message' =>'Password updated successfully'],200);
	          }else{
                 
                  return response()->json(['status'=>1,'message' =>'OTP expired'],200);
	          }
	         }

	         else{

		         	$msg = "Wrong OTP";
			         return response()->json(['status'=>1,'message' =>$msg],200);
             }

            }else{

         	$msg = "Email does not exists";
	         return response()->json(['status'=>1,'message' =>$msg],200);
         }
      }


      public function adminLogs()
      {
           $sub = 'Created for admin log';
           $purpose = 'Test admin log';

            $res = (new AdminLogsService)->adminlogs(1,$sub,$purpose);
            
            if($res == true)
            {
               $msg = "success";
            }else{

                 $msg = "not submitted";
            }
            
            return response()->json(['status'=>1,'message' =>'success','result' => $msg],200);
      }
         
}
