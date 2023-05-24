<?php

namespace App\Http\Controllers\Api\Modules\SalesOrder;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;

class SalesContractController extends Controller
{
    public function salesCntSubmit(Request $request)
    {
    	 echo "<pre>";print_r($request->all());exit();
    }


     // ----------------------------- get all price braeks --------------------------------------------

	   public function priceBreakFetch($po_no)
	    {

	    	  try{ 
                   
                 	 $res = DB::table('orders')->leftjoin('sc_transactions','orders.rfq_no','sc_transactions.rfq_no')->groupBy('sc_transactions.mat_code')
                 	     ->select('sc_transactions.*')->where('orders.po_no',$po_no)->get();
                 	 // echo "<pre>";print_r($newcount);exit();
			    	 
			        return response()->json(['status'=>1,
			          'message' =>'success',
			          'result' => $res],
			          config('global.success_status'));


	      }catch(\Exception $e){

	       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
	     }

	    	 
	    }

	 // ---------------------------------------------------------------------------
}
