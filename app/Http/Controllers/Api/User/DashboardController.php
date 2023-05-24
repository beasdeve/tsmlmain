<?php

namespace App\Http\Controllers\Api\User;

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

class DashboardController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return \Illuminate\Http\Response
    */
   public function userDashboard(Request $request)
   {
   	  
   		$userid = $request->user_id;

   		$getuser = User::where('id',$userid)->first();

   		// dd($getuser);
   		// C -- Customer
   		// Kam -- cam
   		if ( date('m') <= 03 ) {
   		 		$preyear = date("Y",strtotime("-1 year"));
   		 		$fromdate = $preyear.'-'.'04'.'-'.'01';
			    $todate = date("Y-m-d");
			}
			else {
				$year = date("Y");
			    $fromdate = $year.'-'.'04'.'-'.'01';
			    $todate = date("Y-m-d");
			}
   		 
   		 if ($getuser->user_type == 'C') {
   		 	$quote = DB::table('orders')
            ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')            
            ->where('quotes.user_id',$userid)
            ->whereNull('quotes.deleted_at')
            ->count();
	        $data['total_no_of_orders'] = $quote;

	         $rfqNego = DB::table('quotes') 
	            ->where('quotes.user_id',$userid)
	            ->where('quotes.kam_status',6)
	            ->whereNull('quotes.deleted_at')
	            ->count();
	        $data['rfq_under_negotiation'] = $rfqNego;

	        $orderCon = DB::table('orders')
	            ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')             
	            ->where('quotes.user_id',$userid)
	            ->where('orders.status',1)
	            ->whereNull('quotes.deleted_at')
	            ->count();
	        $data['orders_confirmed_pending_for_delivery'] = $orderCon; 
	       

	        $custComplain = DB::table('complain_main') 
	            ->where('complain_main.user_id',$userid)
	            ->where('complain_main.closed_status',1) 
	            ->count();

	        $data['Total_no_of_open_complaints'] = $custComplain;
   		 }

   		 else if ($getuser->user_type == 'PLANT') {
   		 	// dd('PLANT');
   		 	$orgname = $getuser->org_name;
   		 	// dd($orgname);
   		 	$plantId = DB::table('plants')->where('name',$orgname)->first();
   		 	$getsono = DB::table('sc_excel_datas')->where('Plant',$plantId->code)->get();
   		 	// dd($plantId->code,$getsono);
   		 	$doquentysum = 0;
   		 	foreach ($getsono as $key => $oeder) 
   		 	{
   		 		# code...
   		 		$getdespatch = DB::table('delivery_orders')->where('so_no',$oeder->ordr_no)->get();

   		 		
   		 		foreach ($getdespatch as $key => $doqty) 
   		 		{
   		 			$doquentysum+= $doqty->do_quantity;
   		 		}
   		 	}

   		 	$data['qty_despatch'] = $doquentysum;
   		 	 
   		 	$volumeCon = DB::table('quote_schedules')
   		 					->leftjoin('quotes','quote_schedules.quote_id','quotes.id')
   		 					->where('quote_schedules.plant',$orgname)
   		 					->where('quotes.kam_status',4)
				            ->where('quotes.created_at','>=', $fromdate)
			                ->where('quotes.created_at','<=', $todate) 
				            ->whereNull('quotes.deleted_at') 
				            ->select('quote_schedules.id') 
				            ->sum('quote_schedules.quantity');	      
			 
	        
	       	$data['volumeconfirmed'] = $volumeCon;

	       	$rfqNego = DB::table('quote_schedules')
   		 					->leftjoin('quotes','quote_schedules.quote_id','quotes.id')
   		 					->where('quote_schedules.plant',$orgname)
   		 					->where('quotes.kam_status',6)
				            ->where('quotes.created_at','>=', $fromdate)
			                ->where('quotes.created_at','<=', $todate) 
				            ->whereNull('quotes.deleted_at') 
				            ->select('quote_schedules.id') 
				            ->sum('quote_schedules.quantity');

			$data['rfq_under_negotiation'] = $rfqNego;

			$exworkcons = DB::table('quote_schedules')
   		 					->leftjoin('quotes','quote_schedules.quote_id','quotes.id') 
   		 					->where('quote_schedules.plant',$orgname)
   		 					->where('quotes.kam_status',4)
   		 					->where('quote_schedules.delivery','Ex-Works')
				            ->where('quotes.created_at','>=', $fromdate)
			                ->where('quotes.created_at','<=', $todate) 
				            ->whereNull('quotes.deleted_at') 
				            ->sum('quote_schedules.quantity');

			$data['ex_work_confirmed_orders'] = $exworkcons;

	       	 
   		 }
	  	 
   		 else if ($getuser->user_type == 'Kam') {
   		 	$quote = DB::table('orders')
            ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')  
            ->leftjoin('users','quotes.user_id','users.id')           
            ->where('users.zone',$getuser->zone)
            ->whereNull('quotes.deleted_at')
            ->count();
	        $data['total_no_of_orders'] = $quote;

	        $userzone = DB::table('users')  
	            ->where('users.zone',$getuser->zone)
	            ->where('users.user_type','C') 
	            ->count();
	             
	        $data['total_no_cust_assinged'] = $userzone;
	        // dd($getuser->zone);
	        $orderCon = DB::table('orders')
	            ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')             
	            ->leftjoin('users','quotes.user_id','users.id')
	            ->where('orders.status',1)
	            ->where('users.zone',$getuser->zone)
	            ->whereNull('quotes.deleted_at')
	            ->count();
	        $data['orders_confirmed_pending_for_delivery'] = $orderCon;

	        $rfqNego = DB::table('quotes') 
	            ->leftjoin('users','quotes.user_id','users.id')
	            ->where('quotes.kam_status',6)
	            ->where('users.zone',$getuser->zone)
	            ->whereNull('quotes.deleted_at')
	            ->count();
	        $data['rfq_under_negotiation'] = $rfqNego;

	        $custComplain = DB::table('complain_main') 
	        	->leftjoin('users','complain_main.user_id','users.id')
	            ->where('users.zone',$getuser->zone)
	            ->where('complain_main.closed_status',1) 
	            ->count();

	        $data['Total_no_of_open_complaints'] = $custComplain;


	        // ---------------- top 5 ytd cus ---------------------------

	        
            $ytddata = array();
	        $ytd = DB::table('orders')
	               ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')
	               ->leftjoin('users','quotes.user_id','users.id') 
	               ->select('users.org_name','users.id as custid','quotes.rfq_no','quotes.id') 
	               ->where('users.zone',$getuser->zone)
	               ->whereNull('quotes.deleted_at')
	               ->where('orders.status',2)  
	               ->get();

	        
	             // dd($ytd);

	        

	        $topfdive = array();
	        foreach ($ytd as $key => $values) {
	        	$ytddata =0;
	        	$ortherqua = DB::table('quote_schedules') 
	        	->select('quantity')
	               ->where('quote_id','=',$values->id) 	                
	               ->get(); 
                  // dd($ortherqua);
	               foreach ($ortherqua as $k => $v) { 
	               	  $ytddata += $v->quantity; 
	               	  // echo "<pre><br>";print($ortherqua);
	               }

	               // array_push($topfdive,$ytddata); 
	               $comp = $values->org_name;	

	               if (array_key_exists($comp,$topfdive))
					  {
					       $sum1 = $topfdive[$comp] + $ytddata;

					       $topfdive[$comp] = $sum1;
					  }
					else
					  {
					      $topfdive[$comp] = $ytddata;
					  }
	                  
	        }
	        // dd($topfdive);

	       
			arsort($topfdive);
			$largest = array_slice($topfdive, 0, 5, true);
			$rest = array_slice($topfdive,5);

			$rest_sum = array_sum($rest);
	          

			$tot_arra = array();

           $largest['others'] = $rest_sum;
		    // array_push($largest,$rest_sum);
		   // dd($largest,$rest_sum);exit(); 
		   // dd($largest);

             
	        
	            
	        $data['top_five_cust_sale'] = $largest;  
	        // ----------------------------------------------------------
   		 }
   		 else if ($getuser->user_type == 'Sales' || $getuser->user_type == 'SM'|| $getuser->user_type == 'OPT') { 

   		 	// Show data according to financial year.....
   		 	$volumeCon = DB::table('quotes')
   		 	 	->select('quantity') 
	            ->where('quotes.kam_status',4)
	            ->where('quotes.created_at','>=', $fromdate)
                ->where('quotes.created_at','<=', $todate) 
	            ->whereNull('quotes.deleted_at') 
	            ->sum('quotes.quantity');	         
	        $data['volumeconfirmed'] = $volumeCon;

	        $volumeUnderNego = DB::table('quotes')
   		 	 	->select('quantity') 
	            ->where('quotes.kam_status',6) 
	            ->where('quotes.created_at','>=', $fromdate)
                ->where('quotes.created_at','<=', $todate)
	            ->whereNull('quotes.deleted_at')
	            // ->groupBy('rfq_no')
	            ->sum('quotes.quantity');	         
	        $data['volume_under_negotiation'] = $volumeUnderNego;
 			

	        $getrfqno = DB::table('quotes')
	        	->select('quotes.id')
	            ->where('quotes.kam_status',4) 
	            ->where('quotes.created_at','>=', $fromdate)
                ->where('quotes.created_at','<=', $todate) 
	            ->whereNull('quotes.deleted_at')
	            ->groupBy('rfq_no')
	            ->get(); 
	             $explantconordersum = 0;
	            foreach ($getrfqno as $key => $valuesum) 
	            {
	            	$getqutsedno = DB::table('quote_schedules') 
	            	->where('quote_schedules.quote_id',$valuesum->id)
		            ->where('quote_schedules.pickup_type','=','PLANT') 
		            ->get(); 
		            
		            foreach ($getqutsedno as $key => $sumofqua) {
		            	 
		            	$explantconordersum+= $sumofqua->quantity;
		            }	            	
	            }
	            
	            	         
	        $data['ex_plant_confirmed_orders'] = $explantconordersum;

	        $getdepotrfqno = DB::table('quotes')
	        	->select('quotes.id')
	            ->where('quotes.kam_status',4)
	            ->where('quotes.created_at','>=', $fromdate)
                ->where('quotes.created_at','<=', $todate)
	            ->whereNull('quotes.deleted_at')
	            ->groupBy('rfq_no')
	            ->get(); 
	            $exdepotconordersum = 0;
	            foreach ($getdepotrfqno as $key => $valsum) 
	            {
	            	$getdepotrfq = DB::table('quote_schedules') 
	            	->where('quote_schedules.quote_id',$valsum->id)
		            ->where('quote_schedules.pickup_type','=','DEPOT') 
		            ->get(); 
		            
		            foreach ($getdepotrfq as $key => $sumofqua) {
		            	 
		            	$exdepotconordersum+= $sumofqua->quantity;
		            }	            	
	            }
	            
	            	         
	        $data['ex_Depot_confirmed_orders'] = $exdepotconordersum;

	        $getdaprfq = DB::table('quotes')
	        	->select('quotes.id')
	            ->where('quotes.kam_status',4)  
	            ->where('quotes.created_at','>=', $fromdate)
                ->where('quotes.created_at','<=', $todate)
	            ->whereNull('quotes.deleted_at')
	            ->groupBy('rfq_no')
	            ->get(); 
	            $dapconordersum = 0;
	            foreach ($getdaprfq as $key => $valdapsum) 
	            {
	            	$getnewdaprfq = DB::table('quote_schedules') 
	            	->where('quote_schedules.quote_id',$valdapsum->id)
		            ->where('quote_schedules.delivery','=','DAP (Delivered at Place)') 
		            ->get(); 
		            
		            foreach ($getnewdaprfq as $key => $sumofdapqua) {
		            	 
		            	$dapconordersum+= $sumofdapqua->quantity;
		            }	            	
	            }
	            
	            	         
	        $data['DAP_confirmed_orders'] = $dapconordersum;

	        // End of Show data according to financial year.....



	        // Show data according to month .....
	         

	        $fromdatem = date("Y").'-'.date('m').'-'.'01';
			$todatem = date("Y-m-d");
	         
	         

	         
 			

	        $getrfqno = DB::table('quotes')
	        	->select('quotes.id')
	            ->where('quotes.kam_status',4) 
	            ->where('quotes.created_at','>=', $fromdatem)
                ->where('quotes.created_at','<=', $todatem) 
	            ->whereNull('quotes.deleted_at')
	            ->groupBy('rfq_no')
	            ->get(); 
	             $explantconordersum = 0;
	            foreach ($getrfqno as $key => $valuesum) 
	            {
	            	$getqutsedno = DB::table('quote_schedules') 
	            	->where('quote_schedules.quote_id',$valuesum->id)
		            ->where('quote_schedules.pickup_type','=','PLANT') 
		            ->get(); 
		            
		            foreach ($getqutsedno as $key => $sumofqua) {
		            	 
		            	$explantconordersum+= $sumofqua->quantity;
		            }	            	
	            }
	            
	            	         
	        $data['ex_plant_con_orders_chrt_mon'] = $explantconordersum;

	        $getdepotrfqno = DB::table('quotes')
	        	->select('quotes.id')
	            ->where('quotes.kam_status',4)
	            ->where('quotes.created_at','>=', $fromdatem)
                ->where('quotes.created_at','<=', $todatem)
	            ->whereNull('quotes.deleted_at')
	            ->groupBy('rfq_no')
	            ->get(); 
	            $exdepotconordersum = 0;
	            foreach ($getdepotrfqno as $key => $valsum) 
	            {
	            	$getdepotrfq = DB::table('quote_schedules') 
	            	->where('quote_schedules.quote_id',$valsum->id)
		            ->where('quote_schedules.pickup_type','=','DEPOT') 
		            ->get(); 
		            
		            foreach ($getdepotrfq as $key => $sumofqua) {
		            	 
		            	$exdepotconordersum+= $sumofqua->quantity;
		            }	            	
	            }
	            
	            	         
	        $data['ex_Depot_con_orders_chrt_mon'] = $exdepotconordersum;

	        $getdaprfq = DB::table('quotes')
	        	->select('quotes.id')
	            ->where('quotes.kam_status',4)  
	            ->where('quotes.created_at','>=', $fromdatem)
                ->where('quotes.created_at','<=', $todatem)
	            ->whereNull('quotes.deleted_at')
	            ->groupBy('rfq_no')
	            ->get(); 
	            $dapconordersum = 0;
	            foreach ($getdaprfq as $key => $valdapsum) 
	            {
	            	$getnewdaprfq = DB::table('quote_schedules') 
	            	->where('quote_schedules.quote_id',$valdapsum->id)
		            ->where('quote_schedules.delivery','=','DAP (Delivered at Place)') 
		            ->get(); 
		            
		            foreach ($getnewdaprfq as $key => $sumofdapqua) {
		            	 
		            	$dapconordersum+= $sumofdapqua->quantity;
		            }	            	
	            }
	            
	            	         
	        $data['DAP_con_orders_chrt_mon'] = $dapconordersum;

	        // End of Show data according to month .....

   		 }

   		 $data['mtdata'] = 'MT';
   		
         
        // $password = "123456";
        // $encrypted = CryptoJsAes::encrypt($data, $password);
            
        return response()->json(['status'=>1,'message' =>'success.','result' => $data],200);
   }	
}
