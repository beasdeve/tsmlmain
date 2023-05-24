<?php

namespace App\Http\Controllers\Api\Modules\RfqOrderStatus;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Models\RfqOrderStatusCust;
use App\Models\Models\RfqOrderStatusKam;
use JWTAuth;
use Validator;
use File; 
use Storage;
use Response;
use DB; 
use Mail;

class RfqOrderStatusController extends Controller
{
    /**
     * This is for Store Rfq Order Status Kam. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function storeOrderStatusKam(Request $request)
    {

      \DB::beginTransaction();

        try{

          // $validator = Validator::make($request->all(), [ 
          //   'rfq_no'        => 'required', 
          // ]);

          // if ($validator->fails()) { 
          //     return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $validator->errors()],config('global.failed_status'));
          // }

         
          
          $input['rfq_no'] = $request->rfq_no;
          $input['rfq_submited'] = $request->rfq_submited;
          $input['approve_pending_from_sales'] = $request->approve_pending_from_sales;
          $input['reverted_by_sales_plaing'] = $request->reverted_by_sales_plaing;
          $input['price_approved_awaited'] = $request->price_approved_awaited;
          $input['price_accepted'] = $request->price_accepted;
          $input['price_rejected'] = $request->price_rejected;
          $input['requated'] = $request->requated;
          $input['under_negotiation'] = $request->under_negotiation;
          $input['quote_closed'] = $request->quote_closed;
          $input['sc_created'] = $request->sc_created;
          $input['so_created'] = $request->so_created;
          $input['do_created'] = $request->do_created;
          $input['material_invoiced'] = $request->material_invoiced;
          // dd($input);
          $chk = RfqOrderStatusKam::where('rfq_no',$request->rfq_no)->first();
           
          if (!empty($chk)) {

          	if ($request->rfq_submited) {
          		$inputa['rfq_submited'] = $request->rfq_submited;          		
          		$freightsData = RfqOrderStatusKam::where('rfq_no',$request->rfq_no)->update($inputa);
          	}
          	if ($request->approve_pending_from_sales) {
               

          		$inputb['approve_pending_from_sales'] = $request->approve_pending_from_sales;          		
          		$freightsData = RfqOrderStatusKam::where('rfq_no',$request->rfq_no)->update($inputb);
          	}
          	if ($request->reverted_by_sales_plaing) {
          		$inputc['reverted_by_sales_plaing'] = $request->reverted_by_sales_plaing;          		
          		$freightsData = RfqOrderStatusKam::where('rfq_no',$request->rfq_no)->update($inputc);
          	}
          	if ($request->price_approved_awaited) {
          		$inputd['price_approved_awaited'] = $request->price_approved_awaited;          		
          		$freightsData = RfqOrderStatusKam::where('rfq_no',$request->rfq_no)->update($inputd);
          	}
            if ($request->price_accepted) {
              $inputd['price_accepted'] = $request->price_accepted;             
              $freightsData = RfqOrderStatusKam::where('rfq_no',$request->rfq_no)->update($inputd);
            }
            if ($request->price_rejected) {
              $inputd['price_rejected'] = $request->price_rejected;             
              $freightsData = RfqOrderStatusKam::where('rfq_no',$request->rfq_no)->update($inputd);
            }
          	if ($request->requated) {
          		$inpute['requated'] = $request->requated;          		
          		$freightsData = RfqOrderStatusKam::where('rfq_no',$request->rfq_no)->update($inpute);
          	}
          	if ($request->under_negotiation) {
          		$inpute['under_negotiation'] = $request->under_negotiation;          		
          		$freightsData = RfqOrderStatusKam::where('rfq_no',$request->rfq_no)->update($inpute);
          	} 
          	if ($request->quote_closed) {
          		$inpute['quote_closed'] = $request->quote_closed;          		
          		$freightsData = RfqOrderStatusKam::where('rfq_no',$request->rfq_no)->update($inpute);
          	}

            if ($request->sc_created) {

              $inpute['sc_created'] = $request->sc_created;             
              $freightsData = RfqOrderStatusKam::where('rfq_no',$request->rfq_no)->update($inpute);
            }

            if ($request->so_created) {
              $inpute['so_created'] = $request->so_created;             
              $freightsData = RfqOrderStatusKam::where('rfq_no',$request->rfq_no)->update($inpute);
            }

            if ($request->do_created) {
              $inpute['do_created'] = $request->do_created;             
              $freightsData = RfqOrderStatusKam::where('rfq_no',$request->rfq_no)->update($inpute);
            }

            if ($request->material_invoiced) {
              $inpute['material_invoiced'] = $request->material_invoiced;             
              $custData =RfqOrderStatusCust::where('rfq_no',$request->rfq_no)->update($inpute);
            }  
          	
          }else{
          	$freightsData = RfqOrderStatusKam::create($input);
          }
          

          \DB::commit();

           
            return response()->json(['status'=>1,'message' =>'Success'],config('global.success_status'));
           
           

        }catch(\Exception $e){ 
          \DB::rollback(); 
          return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
        }
    }

    /**
     * This is for get get Rfq Orde rStatus Kam. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function getRfqOrderStatusKam(Request $request)
    {
      try{ 
            $statusData = RfqOrderStatusKam::whereIn('rfq_no',$request->rfq_no)->latest()->get();  
             
            if (!empty($statusData)) {
               return response()->json(['status'=>1,'message' =>'success.','result' =>$statusData],200);
            }
            else{

               return response()->json(['status'=>1,'message' =>'No data found','result' => []],config('global.success_status'));

            }
            
            
            }catch(\Exception $e){
                $response['error'] = $e->getMessage();
                return response()->json([$response]);
            }


    }

    /**
     * This is for Store Rfq Order Status Kam. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function StoreRfqOrderStatusCust(Request $request)
    {

      \DB::beginTransaction();

        try{

          // $validator = Validator::make($request->all(), [ 
          //   'rfq_no'        => 'required', 
          // ]);

          // if ($validator->fails()) { 
          //     return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $validator->errors()],config('global.failed_status'));
          // }

         
          
          $input['rfq_no'] = $request->rfq_no;
          $input['rfq_submited'] = $request->rfq_submited;
          $input['quoted_by_tsml'] = $request->quoted_by_tsml;
          $input['under_negotiation'] = $request->under_negotiation;
          $input['final_quoted_by_tsml'] = $request->final_quoted_by_tsml;
          $input['rfq_closed'] = $request->rfq_closed;
          $input['sc_created'] = $request->sc_created;
          $input['so_created'] = $request->so_created;
          $input['do_created'] = $request->do_created;
          $input['material_invoiced'] = $request->material_invoiced;
          
          // dd($input);
          $chk = RfqOrderStatusCust::where('rfq_no',$request->rfq_no)->first();
            
          if (!empty($chk)) {

          	if ($request->rfq_submited) {
          		$inputa['rfq_submited'] = $request->rfq_submited;          		
          		$custData = RfqOrderStatusCust::where('rfq_no',$request->rfq_no)->update($inputa);
          	}
          	if ($request->quoted_by_tsml) {
          		// dd('ok');
          		$inputb['quoted_by_tsml'] = $request->quoted_by_tsml;          		
          		$custData = RfqOrderStatusCust::where('rfq_no',$request->rfq_no)->update($inputb);
          	}
          	if ($request->under_negotiation) {
          		$inputc['under_negotiation'] = $request->under_negotiation;          		
          		$custData = RfqOrderStatusCust::where('rfq_no',$request->rfq_no)->update($inputc);
          	}
          	if ($request->final_quoted_by_tsml) {
          		$inputd['final_quoted_by_tsml'] = $request->final_quoted_by_tsml;          		
          		$custData = RfqOrderStatusCust::where('rfq_no',$request->rfq_no)->update($inputd);
          	}
          	if ($request->rfq_closed) {
          		$inpute['rfq_closed'] = $request->rfq_closed;          		
          		$custData =RfqOrderStatusCust::where('rfq_no',$request->rfq_no)->update($inpute);
          	}

            if ($request->sc_created) {
              $inpute['sc_created'] = $request->sc_created;             
              $custData =RfqOrderStatusCust::where('rfq_no',$request->rfq_no)->update($inpute);
            }

            if ($request->so_created) {
              $inpute['so_created'] = $request->so_created;             
              $custData =RfqOrderStatusCust::where('rfq_no',$request->rfq_no)->update($inpute);
            }

            if ($request->do_created) {
              $inpute['do_created'] = $request->do_created;             
              $custData =RfqOrderStatusCust::where('rfq_no',$request->rfq_no)->update($inpute);
            }

            if ($request->material_invoiced) {
              $inpute['material_invoiced'] = $request->material_invoiced;             
              $custData =RfqOrderStatusCust::where('rfq_no',$request->rfq_no)->update($inpute);
            } 
          	
          	
          }else{
          	$custData = RfqOrderStatusCust::create($input);
          }
          

          \DB::commit();

           
        return response()->json(['status'=>1,'message' =>'Success'],config('global.success_status'));
           
           

        }catch(\Exception $e){ 
          \DB::rollback(); 
          return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
        }
    }

    /**
     * This is for get get Rfq Orde rStatus Kam. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function getRfqOrderStatuCust(Request $request)
    {
      try{ 
          // dd($request->rfq_no);
            $statusData = RfqOrderStatusCust::whereIn('rfq_no',$request->rfq_no)->latest()->get();  
             
            if (!empty($statusData)) {
               return response()->json(['status'=>1,'message' =>'success.','result' => $statusData],200);
            }
            else{

               return response()->json(['status'=>1,'message' =>'No data found','result' => []],config('global.success_status'));

            }
            
            
            }catch(\Exception $e){
                $response['error'] = $e->getMessage();
                return response()->json([$response]);
            }


    }
}
