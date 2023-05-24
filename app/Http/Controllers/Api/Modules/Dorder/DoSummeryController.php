<?php

namespace App\Http\Controllers\Api\Modules\Dorder;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Models\DeliveryOrders;
use App\Models\Models\ProductSubCategory;
use JWTAuth;
use Validator;
use File; 
use Storage;
use Response;
use DB; 
use Mail;
use Auth;


class DoSummeryController extends Controller
{
    /**
     * This is for store do.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
   	public function doSummary(Request $request)
   	{ 

   		try{  
	            $custrefno = $request->cust_Referance;
	            $dodata = DB::table('sc_excel_datas')
	            					->where('Cust_Referance',$custrefno)
            						->select('ordr_no','date')
            						->get();

	            // dd($dodata);
	            foreach ($dodata as $key => $doval) 
	            {
	            	$arra[$key]['po_no'] = $request->cust_Referance;
	            	$arra[$key]['po_date'] = $doval->date;
	            	$arra[$key]['doDocument'] = (!empty($this->doDoc($doval->ordr_no,$request->cust_Referance,$doval->date))) ?  $this->doDoc($doval->ordr_no,$request->cust_Referance,$doval->date) : null;
	            }

	            
	               // dd($arra);
	                   // echo "<pre>";print_r($newcount);exit();
	             
	            return response()->json(['status'=>1,
	                'message' =>'success',
	                'result' => $arra],
	                config('global.success_status'));


	        }catch(\Exception $e){

	         return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
	       	} 
      	 
   	}

   	public function doDoc($orderno,$cust_Referance,$date)
   	{
   		// dd($orderno);
   		 $res = DB::table('delivery_orders') 
	               ->where('delivery_orders.so_no',$orderno) 
	               ->get();
	               // dd($res);
	     $dodata = [];
	     if (!empty($res))
	     {
		     foreach ($res as $key => $dodoc) 
		     {
		     	$dodata[$key]['po_no'] = $cust_Referance;
	            $dodata[$key]['po_date'] = date('d-m-Y',strtotime($date));
		     	$dodata[$key]['invoice_no'] = $dodoc->invoice_no;
	            $dodata[$key]['invoice_date'] = date('d-m-Y',strtotime($dodoc->invoice_date));
	            $dodata[$key]['invoice_qty'] = $dodoc->do_quantity;

	            if (isset($dodoc->lr_file)) 
	                {

	                    $dodata[$key]['lr_file'] = asset('storage/app/public/images/do/'.$dodoc->lr_file);
	                }
	                else
	                {
	                    $dodata[$key]['lr_file'] =  null;
	                }
	                
	                if(isset($dodoc->e_waybill_file))
	                {
	                    $dodata[$key]['e_waybill_file'] =  asset('storage/app/public/images/do/'.$dodoc->e_waybill_file);
	                }
	                else
	                {
	                    $dodata[$key]['e_waybill_file'] =  null;  
	                }

	                if(isset($dodoc->test_certificate_file))
	                {
	                    $dodata[$key]['test_certificate_file'] =  asset('storage/app/public/images/do/'.$dodoc->test_certificate_file);
	                }
	                else
	                {
	                    $dodata[$key]['test_certificate_file'] =  null;  
	                }

	                if(isset($dodoc->e_invoice_file))
	                {
	                    $dodata[$key]['e_invoice_file'] =  asset('storage/app/public/images/do/'.$dodoc->e_invoice_file);
	                }
	                else
	                {
	                    $dodata[$key]['e_invoice_file'] =  null;    
	                }

	                if(isset($dodoc->misc_doc_file))
	                {
	                    $dodata[$key]['misc_doc_file'] =  asset('storage/app/public/images/do/'.$dodoc->misc_doc_file);
	                }
	                else
	                {
	                    $dodata[$key]['misc_doc_file'] =  null;    
	                } 

		     }
		 }
	      return $dodata;         
   	}
}
