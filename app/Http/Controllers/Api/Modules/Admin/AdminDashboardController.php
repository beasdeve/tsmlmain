<?php

namespace App\Http\Controllers\Api\Modules\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Exceptions\JWTException;
use App\Models\OtpVerification;
use App\Mail\Register;
use App\Models\User;
use App\Jobs\UserCreated;
use App\Models\Models\Order;
use App\Models\Models\Quote;
use Illuminate\Support\Facades\Hash;
use App\Models\Models\RegistrationLog;
use App\ServicesMy\MailService;
use JWTAuth;
use Validator;
use Response;
use Mail;
use DB;
use Nullix\CryptoJsAes\CryptoJsAes;

class AdminDashboardController extends Controller
{
   /**
     * This for admin dashboard.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
   	public function adminDashboard(Request $request)
   	{ 

   		try{         
            $getuser = User::get();

            $data['totalcust'] = 0;
	        $data['totalkam'] = 0;
	        $data['totalsalsplan'] = 0;
	        $data['totalsalsman'] = 0;
	   		foreach ($getuser as $key => $value) 
	   		{
	   			if ($value->user_type=='C') 
		   		{
					$data['totalcust']+= 1;
		   		}
		   		elseif ($value->user_type=='Kam') 
		   		{
					$data['totalkam']+= 1;
		   		}
		   		elseif ($value->user_type=='Sales') 
		   		{
					$data['totalsalsplan']+= 1;
		   		}
		   		elseif ($value->user_type=='SM') 
		   		{
					$data['totalsalsman']+= 1;
		   		}

	   		}
              
            return response()->json(['status'=>1,'message' =>'success.','result' => $data],200);
             // return response()->json(['status'=>1,$response],200);
              
            
            }catch(\Exception $e){
                $response['error'] = $e->getMessage();
                return response()->json([$response]);
            }
   		

   	}
}
