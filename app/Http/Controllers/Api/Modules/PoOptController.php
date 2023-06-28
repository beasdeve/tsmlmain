<?php

namespace App\Http\Controllers\Api\Modules;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Models\OnBehalfCategory;
use DB;

class PoOptController extends Controller
{
    
    public function getAllPoOpt()
    {

	    try{ 
           
			$order_results = DB::table('orders')
	        ->where('orders.cus_po_no','!=',"")
	        // ->where('orders.status','!=',8)
	        ->select('id','rfq_no','po_no','cus_po_no','status')
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
		        	"status" => $order_result->status,
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

    public function onbehalfCategory()
    {
    	
	    try{

	    	$onbehalf_data = DB::table('onbehalf_category')
	        ->select('id','name')
	        ->get();

	        $onbehalf_results = [];
         	foreach ($onbehalf_data as $key => $value) {

         		$onbehalf_results[] = array(
		        	"id" => $value->id,
		        	"name" => $value->name,
		        );
         	}

         	return response()->json([
		        'status'=>1,
		        'message' =>'success',
		        'result' => $onbehalf_results
	        ],
	        config('global.success_status'));

	    }catch(\Exception $e){

        	return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
    	}

	}

	public function onbehalfCategoryAdd( Request $request )
    {
    	
    	try{

		    $validation = \Validator::make($request->all(),[ 
	    		 
	        "name" => "required|unique:onbehalf_category", 
	        ]);

	        if ($validation->fails()) {
	            return response()->json(['status'=>0,'errors'=>$validation->errors()],200);
	        }

	        $input['name'] = $request->name;

	        $categoryData = OnBehalfCategory::create($input); 

	   	  	return response()->json(['status'=>1,'message' =>'Ctegory added successfully.','result' => $categoryData],200);

	   	}catch(\Exception $e){

        	return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
    	}
	}

}
