<?php

namespace App\Http\Controllers\Api\Modules\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Exports\ExportRfq;
use Maatwebsite\Excel\Facades\Excel;
use DB;

class RfqManagementController extends Controller
{
        /**
    	* This for admin rfq management.
     	*
     	* @param  \App\Orders
     	* @return \Illuminate\Http\Response
    */
   	public function getRfqAdmin(Request $request)
   	{

 
		$result = [];
        try{         
         	
            $quote = DB::table('quotes')
           ->leftjoin('users','quotes.user_id','users.id')
           ->leftjoin('rfq_status_refs','quotes.kam_status','rfq_status_refs.status')
           ->select('quotes.rfq_no','quotes.user_id','users.name','quotes.quantity','rfq_status_refs.st_text as status','quotes.updated_at','quotes.id','quotes.kam_status','quotes.quote_type')
           ->orderBy('quotes.updated_at','desc')
           ->groupBy('quotes.rfq_no');
           
           if(!empty($request->rfq_no))
           {   
               $quote = $quote->where('quotes.rfq_no',$request->rfq_no);
           }

           if(!empty($request->date))
           {   
           	   $date1 = date_create($request->date);
               $date = date_format($date1,"Y-m-d");
           	   // dd($date);
               $quote = $quote->whereDate('quotes.updated_at',$date);
           }

           // if(!empty($request->customer))
           // {

           //     $quote = $quote->where('orders.cus_po_no',$request->cus_po_no);
           // }

           
           $quote = $quote->whereNull('quotes.deleted_at')
           ->get()->toArray();
           // echo "<pre>";print_r($quote);exit();

          if(!empty($quote))
          {
          foreach ($quote as $key => $value) {
            
            $result[$key]['id'] = $value->id;
            $result[$key]['user'] = $value->name;
            $result[$key]['rfq_no'] = $value->rfq_no;
            $result[$key]['quantity'] = $value->quantity;
            $date =  date_create($value->updated_at);
            $po_dt = date_format($date,"d/m/Y");
            $result[$key]['date'] = $po_dt;
            $result[$key]['status'] = $value->status;
            $result[$key]['kam_st'] = $value->kam_status;
            $result[$key]['quote_type'] = $value->quote_type;
            $date1 = date_create($value->updated_at);
            $date2 = date_create(date('Y-m-d'));
            $diff = date_diff($date1,$date2);
            $result[$key]['date_remaining'] = $diff->format("%a").' Days';

            if($value->kam_status == 8)
              {
                  $var = 'Sales Head';
              }
              else if($value->kam_status == 7)
              {
                  $var = 'Sales Planing';
              }
              else if($value->kam_status != 4 && $value->quote_type == 'C'){
                
                    $var = 'Kam';
              }
              else if($value->kam_status != 4 && $value->quote_type == 'Kam'){
                
                     $var = 'Customer';
              }
              else{
                    $var = ' ';

              } 
              $result[$key]['pending_with'] = $var;

          }
        }
        else{
          $result = [];
        }

         	return response()->json(['status'=>1,'message' =>'success.','result' => $result],200);
          
        
        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return response()->json([$response]);
        }

   	}


   	  /**
    	* This for admin rfq management.
     	*
     	* @param  \App\Orders
     	* @return \Illuminate\Http\Response
    */
   	public function quoteScheById($id)
   	{

 
		$result = [];
        try{         
         	
            $quote = DB::table('quotes')
	           ->leftjoin('quote_schedules','quotes.id','quote_schedules.quote_id')
	           ->leftjoin('sub_categorys','quote_schedules.sub_cat_id','sub_categorys.id')
	           ->leftjoin('rfq_status_refs','quotes.kam_status','rfq_status_refs.status')
	           ->select('quote_schedules.*','sub_categorys.sub_cat_name')
	           ->orderBy('quotes.updated_at','desc')
               ->whereNull('quotes.deleted_at')
               ->where('quotes.rfq_no',$id)
               ->get()->toArray();
           // echo "<pre>";print_r($quote);exit();

          if(!empty($quote))
          {
          foreach ($quote as $key => $value) {
            
            $result[$key]['id'] = $value->id;
            $result[$key]['sub_cat'] = $value->sub_cat_name;
            $result[$key]['quantity'] = $value->quantity;
            $result[$key]['pro_size'] = $value->pro_size;
            $result[$key]['plant'] = $value->plant;
            $result[$key]['status'] = $value->quote_status;
            $result[$key]['expected_price'] = $value->expected_price;
            $result[$key]['kam_price'] = $value->kam_price;

          }
        }
        else{
          $result = [];
        }

         	return response()->json(['status'=>1,'message' =>'success.','result' => $result],200);
          
        
        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return response()->json([$response]);
        }

   	}


   // ---------------------- sales mis excel ---------------------------------------
    public function exportExcelRfq(Request $request)
    {
        // dd($request->input('plant'));
 
    $result = [];
        try{         
          
            $quote = DB::table('quotes')
                    ->leftjoin('quote_schedules','quotes.id','quote_schedules.quote_id')
                    ->leftjoin('sub_categorys','quote_schedules.sub_cat_id','sub_categorys.id')
                    ->leftjoin('users','quotes.user_id','users.id')
                    ->leftjoin('address as bill','quote_schedules.bill_to','bill.id')
                    ->leftjoin('address as ship','quote_schedules.ship_to','ship.id')
                    ->select('quotes.rfq_no','quote_schedules.*','bill.city as bcity','ship.city as scity','users.org_name','users.user_code','sub_categorys.sub_cat_name')
                    ->whereNull('quotes.deleted_at')->whereNull('quote_schedules.deleted_at')
                    ->where('quotes.rfq_no',$request->rfq_no)
           ->get()->toArray();
           // echo "<pre>";print_r($quote);exit();

          if(!empty($quote))
          {
          foreach ($quote as $key => $value) {
            

            $result[$key]['code'] = $value->user_code;
            $result[$key]['user'] = $value->org_name;
            $result[$key]['rfq_no'] = $value->rfq_no;
            $result[$key]['sub_cat'] = $value->sub_cat_name;
            $result[$key]['pro_size'] = $value->pro_size;
            $result[$key]['quantity'] = $value->quantity;
            $result[$key]['expectedPrice'] = $value->expected_price;
            $result[$key]['tsmlPrice'] = $value->kam_price;
            $result[$key]['bill'] = $value->bcity;
            $result[$key]['ship'] = $value->scity;
            $result[$key]['to_date'] = date_format(date_create($value->to_date),"d-m-Y");
            $result[$key]['from_date'] = date_format(date_create($value->from_date),"d-m-Y");
            $result[$key]['valid_till'] = date_format(date_create($value->valid_till),"d-m-Y");
           

          }
            // echo "<pre>";print_r($result);exit();
            return Excel::download(new ExportRfq($result), 'rfqdump.xlsx');
        }
        else{
          $result = [];
        }

          return response()->json(['status'=>1,'message' =>'success.','result' => $result],200);
          
        
        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return response()->json([$response]);
        }

    }
    // -------------------------------------------------------------------------------
}
