<?php

namespace App\Http\Controllers\Api\Modules\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Nullix\CryptoJsAes\CryptoJsAes;
use App\Exports\ExportOrder;
use App\Exports\ExportMis;
use Maatwebsite\Excel\Facades\Excel;
use App\Models\Models\ProductSizeMatNoModel;
use DB;

class OrderManagementController extends Controller
{
        /**
    	* This for admin orders management.
     	*
     	* @param  \App\Orders
     	* @return \Illuminate\Http\Response
    */
   	public function getAllOrdersAdmin(Request $request)
   	{

 
		$result = [];
        try{         
         	
            $quote = DB::table('orders')
           ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')
           ->leftjoin('quote_schedules','quotes.id','quote_schedules.quote_id')
           ->leftjoin('users','quotes.user_id','users.id')
           ->select('quotes.rfq_no','quotes.user_id','orders.letterhead','orders.po_no','orders.po_date','users.name','orders.status',DB::raw("(sum(quote_schedules.quantity)) as tot_qt"),'orders.amdnt_no','orders.cus_po_no')
           ->orderBy('quotes.updated_at','desc')
           ->groupBy('quotes.rfq_no');
           
           if(!empty($request->rfq_no))
           {
               $quote = $quote->where('orders.rfq_no',$request->rfq_no);
           }

           if(!empty($request->po_no))
           {
               $quote = $quote->where('orders.po_no',$request->po_no);
           }

           if(!empty($request->cus_po_no))
           {
               $quote = $quote->where('orders.cus_po_no',$request->cus_po_no);
           }

           if(!empty($request->customer))
           {
               $user = DB::table('users')->where('org_name',$request->customer)->first();
               if(!empty($user))
               {
                   $userid = $user->id;
                }else{

                  $userid = '0094674';
                }
                $quote = $quote->where('quotes.user_id',$userid);
           }

           if(!empty($request->date))
           {
               $date =  date_create($request->date);
               $po_dt = date_format($date,"Y-m-d");
               // dd($date);
               $quote = $quote->where('orders.po_date',$po_dt);
           }

           
           $quote = $quote->whereNull('quotes.deleted_at')->where('quote_schedules.quote_status',1)
           ->get()->toArray();
           // echo "<pre>";print_r($quote);exit();

          if(!empty($quote))
          {
          foreach ($quote as $key => $value) {

            $result[$key]['po_no'] = $value->po_no;
            $result[$key]['cus_po_no'] = $value->cus_po_no;
            $result[$key]['user'] = $value->name;
            $result[$key]['rfq_no'] = $value->rfq_no;
            $result[$key]['quantity'] = $value->tot_qt;
            $result[$key]['amdnt_no'] = $value->amdnt_no;
            $date =  date_create($value->po_date);
            $po_dt = date_format($date,"d/m/Y");
            $result[$key]['po_date'] = $po_dt;
            $result[$key]['status'] = $value->status;
            $result[$key]['status_txt'] = $this->poStatusRef($value->status);

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

   	// ---------- po status --------------------------------------------------------
	   public function poStatusRef($kam_status)
	   {

	       $res = DB::table('po_status_refs')
	                 ->select('st_text')
	                 ->where('status',$kam_status)
	                 ->first();

	       return $res->st_text;
	   }
   // -------------------------------------------------------------

     /**
    	* PO by po no.
     	*
     	* @param  \App\Orders
     	* @return \Illuminate\Http\Response
    */

	  public function getOrderByPo($id)
      {
       \DB::beginTransaction();

       try{



           $quote = DB::table('orders')
           ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')
           ->leftjoin('users','quotes.user_id','users.id')
           ->leftjoin('products','quotes.product_id','products.id')
           ->leftjoin('categorys','quotes.cat_id','categorys.id')
           // ->leftjoin('sub_categorys','categorys.id','sub_categorys.cat_id')
           ->select('quotes.rfq_no','quotes.user_id','quotes.id as qid','products.slug','products.status','categorys.*','users.id','products.id as pid','categorys.id as cid','quotes.quantity','orders.letterhead','orders.po_no','orders.cus_po_no','orders.po_date','orders.status as po_st','orders.amdnt_no')
           ->orderBy('quotes.updated_at','desc')
           ->where('orders.po_no',$id)
           ->whereNull('quotes.deleted_at')
           ->get()->toArray();
           // echo "<pre>";print_r($quote);exit();
          foreach ($quote as $key => $value) {

            // $result[$key]['C'] = $value->C;
            // $result[$key]['Cr'] = $value->Cr;
            // $result[$key]['Phos'] = $value->Phos;
            // $result[$key]['S'] = $value->S;
            // $result[$key]['Si'] = $value->Si;
            $result[$key]['cat_dese'] = $value->cat_dese;
            $result[$key]['cat_id'] = $value->cid;
            $result[$key]['cat_name'] = $value->cat_name;
            $result[$key]['image_2_url'] = $value->image_2;
            $result[$key]['image_3_url'] = $value->image_3;
            $result[$key]['image_4_url'] = $value->image_4;
            $result[$key]['is_populer'] = $value->is_populer;
            $result[$key]['product_id'] = $value->pid;
            // $result[$key]['sizes'] = $value->pro_size;
            $result[$key]['slug'] = $value->slug;
            $result[$key]['status'] = $value->status;
            $result[$key]['po_st'] = $value->po_st;
            $result[$key]['amdnt_no'] = $value->amdnt_no;
            $result[$key]['primary_image_url'] = asset('storage/app/public/images/product/'.$value->primary_image);
            $result[$key]['quote_id'] = $value->qid;
            $result[$key]['user_id'] = $value->user_id;
            $result[$key]['rfq_no'] = $value->rfq_no;
            $result[$key]['quantity'] = $value->quantity;
            $result[$key]['po_no'] = $value->po_no;
            $result[$key]['cus_po_no'] = $value->cus_po_no;
            $result[$key]['letterhead'] = asset('storage/app/public/images/letterheads/'.$value->letterhead);
            $date =  date_create($value->po_date);
            $po_dt = date_format($date,"d-m-Y");
            $result[$key]['po_date'] = $po_dt;
            $result[$key]['schedule'] = $this->getPoSchedules($value->qid,$value->rfq_no,$value->cus_po_no,$value->cat_dese,$po_dt);


          }
              // echo "<pre>";print_r($result);exit();
          \DB::commit();
          if(!empty($result))
          {

          $password = "123456";

          $encrypted = CryptoJsAes::encrypt($result, $password);
            return response()->json(['status'=>1,'message' =>'success','result' => $result],config('global.success_status'));
          }
          else{

           return response()->json(['status'=>1,'message' =>'success','result' => 'PO not found'],config('global.success_status'));

         }



     }catch(\Exception $e){

       \DB::rollback();

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }
   }



   // --------------------- po schedules ------------------------------------------

       public function getPoSchedules($qid,$rfq_no,$cus_po_no,$cat_dese,$po_dt)
      {
          $quote_sches = array();

          $res = DB::table('quote_schedules')
          ->leftjoin('sub_categorys','quote_schedules.sub_cat_id','sub_categorys.id')
          ->leftjoin('address as addr1','quote_schedules.bill_to','addr1.id')
          ->leftjoin('address as addr2','quote_schedules.ship_to','addr2.id')
          ->select('quote_schedules.*','addr1.id as billto','addr1.state as billtostate','addr1.addressone as billtoaddressone','addr1.addresstwo as billtoaddresstwo','addr1.city as billtocity','addr1.pincode as billtopincode','addr2.id as shito','addr2.state as shiptostate','addr2.addressone as shiptoaddressone','addr2.addresstwo as shiptoaddresstwo','addr2.city as shiptocity','addr2.pincode as shiptopincode','sub_categorys.sub_cat_name')
          ->where('quote_schedules.quote_id',$qid)->where('quote_schedules.quote_status',1)->whereNull('quote_schedules.deleted_at')->get();

          foreach ($res as $key => $value) {

             $quote_sches[$key]['id'] = $value->id;
             $quote_sches[$key]['schedule_no'] = $value->schedule_no;
             $quote_sches[$key]['quantity'] = $value->quantity;
             $quote_sches[$key]['pro_size'] = $value->pro_size;
             $quote_sches[$key]['to_date'] = $value->to_date;
             $quote_sches[$key]['from_date'] = $value->from_date;
             $quote_sches[$key]['kam_price'] = $value->kam_price;
             $quote_sches[$key]['expected_price'] = $value->expected_price;
             $quote_sches[$key]['plant'] = $value->plant;
             $quote_sches[$key]['location'] = $value->location;
             $quote_sches[$key]['bill_to'] = $value->bill_to;
             $quote_sches[$key]['ship_to'] = $value->ship_to;
             $quote_sches[$key]['remarks'] = $value->remarks;
             $quote_sches[$key]['kamsRemarks'] = $value->kamsRemarks;
             $quote_sches[$key]['salesRemarks'] = $value->salesRemarks;
             $quote_sches[$key]['delivery'] = $value->delivery;
             $quote_sches[$key]['valid_till'] = $value->valid_till;
             $quote_sches[$key]['quote_status'] = $value->quote_status;
             $quote_sches[$key]['confirm_date'] = $value->confirm_date;
             $quote_sches[$key]['pickup_type'] = $value->pickup_type;
             $quote_sches[$key]['sub_cat_id'] = $value->sub_cat_id;
             $quote_sches[$key]['sub_cat_name'] = (!empty($value->sub_cat_name)) ? $value->sub_cat_name : '';
             $quote_sches[$key]['pay_term'] = $value->pay_term;
             $quote_sches[$key]['credit_days'] = $value->credit_days;
             $quote_sches[$key]['bill_to_addr'] = $value->billtoaddressone.''.$value->billtoaddresstwo
                                                   .''.$value->billtocity.''.$value->billtostate.', '.$value->billtopincode;
             $quote_sches[$key]['ship_to_addr'] = $value->shiptoaddressone.''.$value->shiptoaddresstwo
                                                   .''.$value->shiptocity.''.$value->shiptostate.', '.$value->shiptopincode;
             $quote_sches[$key]['bill_to_state'] = $value->billtostate;
             $quote_sches[$key]['ship_to_state'] = $value->shiptostate;

             $quote_sches[$key]['rfq_no'] = $rfq_no;
             $quote_sches[$key]['cus_po_no'] = $cus_po_no;
             $quote_sches[$key]['cat_dese'] = $cat_dese;
             $quote_sches[$key]['po_dt'] = $po_dt;




          }

          return $quote_sches;
      }

      // -------------------------------------------------------------------------------

           /**
    	* PO by po no.
     	*
     	* @param  \App\Orders
     	* @return \Illuminate\Http\Response
    */

	  public function getOrderByPoExcel($id)
      {
       \DB::beginTransaction();

       try{



           $quote = DB::table('orders')
           ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')
           ->leftjoin('users','quotes.user_id','users.id')
           ->leftjoin('products','quotes.product_id','products.id')
           ->leftjoin('categorys','quotes.cat_id','categorys.id')
           // ->leftjoin('sub_categorys','categorys.id','sub_categorys.cat_id')
           ->select('quotes.rfq_no','quotes.user_id','quotes.id as qid','products.slug','products.status','categorys.*','users.id','products.id as pid','categorys.id as cid','quotes.quantity','orders.letterhead','orders.po_no','orders.cus_po_no','orders.po_date','orders.status as po_st','orders.amdnt_no','users.org_name as orgname','users.user_code as user_code')
           ->orderBy('quotes.updated_at','desc')
           ->where('orders.po_no',$id)
           ->whereNull('quotes.deleted_at')
           ->first();
           // echo "<pre>";print_r($quote);exit();
          // foreach ($quote as $key => $value) {

            // $result[$key]['C'] = $value->C;
            // $result[$key]['Cr'] = $value->Cr;
            // $result[$key]['Phos'] = $value->Phos;
            // $result[$key]['S'] = $value->S;
            // $result[$key]['Si'] = $value->Si;
        
            $date =  date_create($quote->po_date);
            $po_dt = date_format($date,"d-m-Y");
            
            $result['schedule'] = $this->getExcelPoSchedules($quote->qid,$quote->rfq_no,$quote->cus_po_no,$quote->cat_dese,$po_dt,$quote->orgname,$quote->user_code);


          // }
              // echo "<pre>";print_r($result);exit();
          \DB::commit();
          
          return Excel::download(new ExportOrder($result), 'orderexcel.xlsx');



     }catch(\Exception $e){

       \DB::rollback();

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }
   }


   // --------------------- po Excel schedules ------------------------------------------

       public function getExcelPoSchedules($qid,$rfq_no,$cus_po_no,$cat_dese,$po_dt,$orgname,$user_code)
      {
          $quote_sches = array();

          $res = DB::table('quote_schedules')
          ->leftjoin('sub_categorys','quote_schedules.sub_cat_id','sub_categorys.id')
          ->leftjoin('address as addr1','quote_schedules.bill_to','addr1.id')
          ->leftjoin('address as addr2','quote_schedules.ship_to','addr2.id')
          ->select('quote_schedules.*','addr1.id as billto','addr1.state as billtostate','addr1.addressone as billtoaddressone','addr1.addresstwo as billtoaddresstwo','addr1.city as billtocity','addr1.pincode as billtopincode','addr2.id as shito','addr2.state as shiptostate','addr2.addressone as shiptoaddressone','addr2.addresstwo as shiptoaddresstwo','addr2.city as shiptocity','addr2.pincode as shiptopincode','sub_categorys.sub_cat_name')
          ->where('quote_schedules.quote_id',$qid)->where('quote_schedules.quote_status',1)->whereNull('quote_schedules.deleted_at')->get();

          foreach ($res as $key => $value) {
             
             $quote_sches[$key]['user_code'] = $user_code;
             $quote_sches[$key]['orgname'] = $orgname;
             $quote_sches[$key]['rfq_no'] = $rfq_no;
             $quote_sches[$key]['cus_po_no'] = $cus_po_no;
             $quote_sches[$key]['cat_dese'] = $cat_dese;
             $quote_sches[$key]['sub_cat_name'] = (!empty($value->sub_cat_name)) ? $value->sub_cat_name : '';
             $quote_sches[$key]['pro_size'] = $value->pro_size;
             $quote_sches[$key]['expected_price'] = $value->expected_price;
             $quote_sches[$key]['kam_price'] = $value->kam_price;
             $quote_sches[$key]['bill_to_addr'] = $value->billtoaddressone.''.$value->billtoaddresstwo.''.$value->billtocity.''.$value->billtostate.', '.$value->billtopincode;
             $quote_sches[$key]['ship_to_addr'] = $value->shiptoaddressone.''.$value->shiptoaddresstwo.''.$value->shiptocity.''.$value->shiptostate.', '.$value->shiptopincode;
             $quote_sches[$key]['to_date'] = date("d-m-Y", strtotime($value->to_date));
             $quote_sches[$key]['from_date'] = date("d-m-Y", strtotime($value->from_date));
             $quote_sches[$key]['valid_till'] = date("d-m-Y", strtotime($value->valid_till));
             $quote_sches[$key]['po_dt'] = $po_dt;





          }

          return $quote_sches;
      }


           /**
      * PO by po no.
      *
      * @param  \App\Orders
      * @return \Illuminate\Http\Response
    */

    public function storeMatCode(Request $request)
      {
       // \DB::beginTransaction();

       try{
              $matno['plant_id'] = 1;
              $matno['plant_type'] = $request->plant_type;
              $matno['sub_cat_id'] = $request->sub_cat_id;
              $matno['product_size'] = $request->product_size;
              $matno['mat_no'] = $request->mat_no;
               

            $chkMat = ProductSizeMatNoModel::where('mat_no',$request->mat_no)->get()->toArray();

              if(empty($chkMat))
              {
              $result = ProductSizeMatNoModel::where('plant_type',$request->plant_type)->where('sub_cat_id',$request->sub_cat_id)->where('product_size',$request->product_size)->get()->toArray();

              if(empty($result))
              {
                // dd($matno);
                 // \DB::commit();
                   // ProductSizeMatNoModel::create($matno);

                DB::table('product_size_mat_no')->insert($matno);

                return response()->json(['status'=>1,'message' =>'success','result' => 'Material code successfuly updated'],config('global.success_status'));

              }else{
                 
                   return response()->json(['status'=>1,'message' =>'success','result' => 'This material already exists'],config('global.success_status'));

              }
            }else{
                 
                   return response()->json(['status'=>1,'message' =>'success','result' => 'This Material Code already exists'],config('global.success_status'));

              }


              // echo "<pre>";print_r($result);exit();


     }catch(\Exception $e){

       // \DB::rollback();

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }
   }




    public function salesMisList(Request $request)
    {

 
    $result = [];
        try{         
          
            $quote = DB::table('quote_schedules')
           ->leftjoin('quotes','quote_schedules.quote_id','quotes.id')
           ->leftjoin('orders','quotes.rfq_no','orders.rfq_no')
           ->leftjoin('users','quotes.user_id','users.id')
           ->select('quotes.rfq_no','quotes.user_id','orders.po_no','orders.po_date','users.name','orders.status','orders.amdnt_no','orders.cus_po_no','quote_schedules.quantity as scheqty','quote_schedules.plant')
           ->orderBy('quote_schedules.updated_at','desc');
           // ->groupBy('quotes.rfq_no');
           
           if(!empty($request->sku))
           {
               $sub_id = DB::table('product_size_mat_no')->where('mat_no',$request->sku)->first();
               $quote = $quote->where('quote_schedules.sub_cat_id',$sub_id->sub_cat_id)->where('quote_schedules.pro_size',$sub_id->product_size);
           }

           if(!empty($request->location))
           {
               $city = DB::table('address')->where('city',$request->location)->groupBy('cus_code')->get();
              $cityids = array();
               foreach ($city as $key => $value) {
                    array_push($cityids,$value->id);
               }
               // dd($cityids);
               $quote = $quote->whereIn('quotes.user_id',$cityids);
           }

           if(!empty($request->plant))
           {
               $quote = $quote->where('quote_schedules.plant',$request->plant);
           }

           
           $quote = $quote->whereNull('quote_schedules.deleted_at')->where('quote_schedules.quote_status',1)
           ->get()->toArray();
           // echo "<pre>";print_r($quote);exit();

          if(!empty($quote))
          {
          foreach ($quote as $key => $value) {
           
           
            $result[$key]['po_no'] = $value->po_no;
            $result[$key]['cus_po_no'] = $value->cus_po_no;
            $result[$key]['user'] = $value->name;
            $result[$key]['rfq_no'] = $value->rfq_no;
            $result[$key]['quantity'] = $value->scheqty;
            $result[$key]['amdnt_no'] = $value->amdnt_no;
            $date =  date_create($value->po_date);
            $po_dt = date_format($date,"d/m/Y");
            $result[$key]['po_date'] = $po_dt;
            $result[$key]['status'] = $value->status;
            $result[$key]['plant'] = $value->plant;


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
    public function salesMisExcel(Request $request)
    {
        // dd($request->input('plant'));
 
    $result = [];
        try{         
          
            $quote = DB::table('quote_schedules')
           ->leftjoin('quotes','quote_schedules.quote_id','quotes.id')
           ->leftjoin('orders','quotes.rfq_no','orders.rfq_no')
           ->leftjoin('users','quotes.user_id','users.id')
           ->select('quotes.rfq_no','quotes.user_id','orders.po_no','orders.po_date','users.name','orders.status','orders.amdnt_no','orders.cus_po_no','quote_schedules.quantity as scheqty','quote_schedules.plant','quote_schedules.pro_size')
           ->orderBy('quote_schedules.updated_at','desc');
           // ->groupBy('quotes.rfq_no');
           
           if(!empty($request->sku))
           {
               $sub_id = DB::table('product_size_mat_no')->where('mat_no',$request->sku)->first();
               if(!empty($sub_id))
               {
               $quote = $quote->where('quote_schedules.sub_cat_id',$sub_id->sub_cat_id)->where('quote_schedules.pro_size',$sub_id->product_size);
              }
           }

           if(!empty($request->location))
           {
               $city = DB::table('address')->where('city',$request->location)->groupBy('cus_code')->get();
              $cityids = array();
               foreach ($city as $key => $value) {
                    array_push($cityids,$value->id);
               }
               // dd($cityids);
               $quote = $quote->whereIn('quotes.user_id',$cityids);
           }

           if(!empty($request->plant))
           {
               $quote = $quote->where('quote_schedules.plant',$request->plant);
           }

           
           $quote = $quote->whereNull('quote_schedules.deleted_at')->where('quote_schedules.quote_status',1)
           ->get()->toArray();
           // echo "<pre>";print_r($quote);exit();

          if(!empty($quote))
          {
          foreach ($quote as $key => $value) {

            $result[$key]['po_no'] = $value->po_no;
            $result[$key]['cus_po_no'] = $value->cus_po_no;
            $result[$key]['user'] = $value->name;
            $result[$key]['rfq_no'] = $value->rfq_no;
            $result[$key]['quantity'] = $value->scheqty;
            $date =  date_create($value->po_date);
            $po_dt = date_format($date,"d/m/Y");
            $result[$key]['po_date'] = $po_dt;
            // $result[$key]['status'] = $value->status;
            $result[$key]['plant'] = $value->plant;
            $result[$key]['size'] = $value->pro_size;

          }

            return Excel::download(new ExportMis($result), 'salesmis.xlsx');
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
