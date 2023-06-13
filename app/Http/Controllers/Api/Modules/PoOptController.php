<?php

namespace App\Http\Controllers\Api\Modules;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;

class PoOptController extends Controller
{
    
    public function getAllPoOpt()
    {

	    try{ 
           
         	// $results = DB::table('orders as od')
         	// ->rightjoin('sc_excel_datas as sed','od.cus_po_no','sed.Cust_Referance')
         	// ->rightjoin('delivery_orders as do','sed.ordr_no','do.so_no')
         	// ->select('od.po_no','od.cus_po_no','od.rfq_no','sed.QtyContractTSML',DB::raw('SUM(do.do_quantity) as total_do_qt'))
         	// ->where('od.cus_po_no','!=',"")
         	// ->get();

			$order_results = DB::table('orders')
	        ->where('orders.cus_po_no','!=',"")
	        ->select('id','rfq_no','po_no','cus_po_no')
	        ->get();
	        $order_sc_excel_datas_results = [];
         	foreach ($order_results as $key => $order_result) {

         		$sc_excel_datas_results = DB::table('sc_excel_datas')
		        ->where('sc_excel_datas.Cust_Referance',$order_result->cus_po_no)
		        ->select('QtyContractTSML','ordr_no')
		        ->first();
		        $total_do_qt = 0;
		        if(!empty($sc_excel_datas_results)){
			        $total_do_qt = DB::table('delivery_orders')
			        ->where('delivery_orders.so_no',$sc_excel_datas_results->ordr_no)
			        ->sum('delivery_orders.do_quantity');
		    	}
		        $order_sc_excel_datas_results[] = array(
		        	"id" => $order_result->id,
		        	"rfq_no" => $order_result->rfq_no,
		        	"po_no" => $order_result->po_no,
		        	"cus_po_no" => $order_result->cus_po_no,
		        	"QtyContractTSML" => ($sc_excel_datas_results)?$sc_excel_datas_results->QtyContractTSML:"0",
		        	"total_do_qt" => number_format((float)$total_do_qt, 2, '.', ''),
		        );
		        
         	}

         	// echo "<pre>";print_r($order_sc_excel_datas_results);exit();
	    	 
	        return response()->json([
		        'status'=>1,
		        'message' =>'success',
		        'result' => $order_sc_excel_datas_results
	        ],
	        config('global.success_status'));


        }catch(\Exception $e){

        	return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
    	}

    	 
    }

}
