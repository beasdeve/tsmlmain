<?php

namespace App\Http\Controllers\Api\Modules\Search;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Models\Quote;
use App\Models\Models\QuoteSchedule;
use App\Models\Models\ProductSubCategory;
use App\Models\Models\Quotedelivery;
use App\Models\Models\Requote;
use App\Models\Models\Order;
use App\Models\Models\Deleteremark;
use App\Models\Models\Plant;
use App\Models\Models\DeliveryMethod;
use App\Mail\RfqGeneratedMail;
use App\Http\Controllers\Api\Modules\Quote\QuoteController;
use Nullix\CryptoJsAes\CryptoJsAes;
use App\Models\User;
use Validator;
use Auth;
use DB;


class SearchController extends Controller
{

	/*------------------------------- rfq search ---------------------------*/
     public function cusRfqSearchList(Request $request)
     {
     	 // echo "<pre>";print_r($request->all());exit();

     	   \DB::beginTransaction();

        try{ 


          // $encrypted = json_encode($request->all());
          //   // $json = json_encode($encrypted1);
          // $password = "123456";

          // $decrypted = CryptoJsAes::decrypt($encrypted, $password);
          // dd($decrypted);

         $rfq_no = $request->input('rfq_no');

          // $rfq_no = $decrypted['rfq_no'];
         $quoteArr = array();    

         $quotes = DB::table('quotes')->leftjoin('users','quotes.user_id','users.id')
         ->leftjoin('quote_schedules','quotes.id','quote_schedules.quote_id')
         ->leftjoin('products','quotes.product_id','products.id')
         ->leftjoin('categorys','quotes.cat_id','categorys.id')
         ->leftjoin('sub_categorys','categorys.id','sub_categorys.cat_id')
         ->select('quotes.*','users.name',DB::raw('SUM(quotes.quantity) as tot_qt'),'products.pro_desc','quotes.rfq_no','categorys.cat_name','sub_categorys.sub_cat_name','categorys.primary_image')
         // ->where('quotes.kam_status','!=',4)
         ->where('quotes.rfq_no',$rfq_no)
         ->groupBy('quotes.rfq_no')
         ->orderBy('quotes.created_at','desc')
         ->whereNull('quotes.deleted_at');
           // ->toSql();
         $quotes = $quotes->get();
             // echo "<pre>";print_r($user_id);
             // exit();
         

         foreach ($quotes as $key => $value) {
           
          $quoteArr[$key]['quote_id'] = $value->id;
          $quoteArr[$key]['user_id'] = $value->user_id;
          $quoteArr[$key]['rfq_no'] = $value->rfq_no;
          $quoteArr[$key]['quantity'] = (new QuoteController)->rfqtotQt($value->rfq_no);
          $quoteArr[$key]['kam_status'] = $value->kam_status;
          $quoteArr[$key]['name'] = $value->name;
          $quoteArr[$key]['created_at'] = date('d-m-Y',strtotime($value->created_at));
          $quoteArr[$key]['cat_id'] = $value->cat_id;
          $quoteArr[$key]['product_id'] = $value->product_id;
          $quoteArr[$key]['cat_name'] = $value->cat_name;
          $quoteArr[$key]['sub_cat_name'] = $value->sub_cat_name;
          $quoteArr[$key]['pro_desc'] = $value->pro_desc;
          $quoteArr[$key]['quote_type'] = $value->quote_type;
          $quoteArr[$key]['status'] = (new QuoteController)->schedule_status($value->rfq_no);
          $quoteArr[$key]['dash_dt'] = date('jS F, Y',strtotime($value->created_at));
          $quoteArr[$key]['status_txt'] = (new QuoteController)->schedule_status_old($value->kam_status);
          $quoteArr[$key]['st_txt'] = (new QuoteController)->cusSttxt($value->rfq_no);
          
          
        }
                 // echo "<pre>";print_r($quoteArr);exit();


        \DB::commit();

        if(!empty($quoteArr))
        {

            $password = "123456";
            $encrypted = CryptoJsAes::encrypt($quoteArr, $password);
         return response()->json(['status'=>1,
          'message' =>config('global.sucess_msg'),
          'result' => $encrypted],
          config('global.success_status'));
       }
       else{

         return response()->json(['status'=>1,
          'message' =>'not found',
          'result' => []],
          config('global.success_status'));
       }


     }catch(\Exception $e){

       \DB::rollback();

       return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
     }
     }

    /*----------------------------------------------------------------------*/

    /*--------------------- po search -----------------------------------------*/

     public function poSearchList(Request $request)
     {
		     	 // echo "<pre>";print_r($request->all());exit();

		   \DB::beginTransaction();

		 try{ 
           //   $encrypted = json_encode($request->all());
           //  // $json = json_encode($encrypted1);
           //  $password = "123456";

           //  $decrypted = CryptoJsAes::decrypt($encrypted, $password);
		         $search_txt = $request->input('search_txt');
           //  $search_txt = $decrypted['search_txt'];

		         $po_no = Order::where('po_no',$search_txt)->first();

                  $quote = DB::table('orders')
		           ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')
		           ->leftjoin('quote_schedules','quotes.id','quote_schedules.quote_id')
		           ->leftjoin('users','quotes.user_id','users.id')    
		           ->select('quotes.rfq_no','quotes.user_id','orders.letterhead','orders.po_no','orders.po_date','users.name','orders.status',DB::raw("(sum(quote_schedules.quantity)) as tot_qt"),'orders.amdnt_no','orders.cus_po_no')
		           ->orderBy('quotes.updated_at','desc')
		           ->groupBy('quotes.rfq_no');

		           if(!empty($po_no))
		           {
		           	    $quote = $quote->where('orders.po_no',$search_txt);
		           }else{

                      $quote = $quote->where('orders.cus_po_no',$search_txt);
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
		            $result[$key]['status_txt'] = (new QuoteController)->poStatusRef($value->status);

		          }
		        }
		        else{
		          $result = [];
		        }

		         // echo "<pre>";print_r($quote);exit();


		        \DB::commit();

		        if(!empty($result))
		        {

              $password = "123456";
            $encrypted = CryptoJsAes::encrypt($result, $password);
		         return response()->json(['status'=>1,
		          'message' =>config('global.sucess_msg'),
		          'result' => $encrypted],
		          config('global.success_status'));
		       }
		       else{

		         return response()->json(['status'=>1,
		          'message' =>'not found',
		          'result' => []],
		          config('global.success_status'));
		       }


	     }catch(\Exception $e){

	       \DB::rollback();

	       return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
	     }
     }

    /*----------------------------------------------------------------------*/
}
