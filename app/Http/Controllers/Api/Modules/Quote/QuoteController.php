<?php

namespace App\Http\Controllers\Api\Modules\Quote;

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
use App\Mail\Models\RfqGeneratedMail;
use App\Http\Controllers\Api\Modules\QuoteEmail\QuoteEmailController;
use App\Models\User;
use Validator;
use Auth;
use DB;
use \PDF;
use Mail;
use Nullix\CryptoJsAes\CryptoJsAes;
use File; 
use Storage;

class QuoteController extends Controller
{

  public function downloadPdf($id,$usertype)
  {

    $quote = DB::table('orders')
            ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')
            ->leftjoin('users','quotes.user_id','users.id')
            ->leftjoin('products','quotes.product_id','products.id')
            ->leftjoin('categorys','quotes.cat_id','categorys.id')
            // ->leftjoin('sub_categorys','categorys.id','sub_categorys.cat_id')
            ->select('quotes.rfq_no','quotes.user_id','quotes.id as qid','products.slug','products.status','categorys.*','users.id','users.name as uname','products.id as pid','categorys.id as cid','quotes.quantity','orders.letterhead','orders.po_no','orders.po_date')
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
      $result[$key]['primary_image_url'] = asset('storage/app/public/images/product/'.$value->primary_image);
      $result[$key]['quote_id'] = $value->qid;
      $result[$key]['user_id'] = $value->user_id;
      $result[$key]['rfq_no'] = $value->rfq_no;
      $result[$key]['quantity'] = $value->quantity;
      $result[$key]['po_no'] = $value->po_no;
      $date =  date_create($value->po_date);
      $po_dt = date_format($date,"d-m-Y");
      $result[$key]['po_date'] = $po_dt;
      $result[$key]['schedule'] = $this->getPoSchedulesPdf($value->qid,$value->rfq_no,$usertype);

    }

    $billto = $result[$key]['schedule'][0]['bill_to'];
    $shipto = $result[$key]['schedule'][0]['ship_to'];
    // dd($shipto);
    $userbilltoaddr = DB::table('address')->where('id',$billto)
                  ->select('addressone','addresstwo','city','state','pincode')
                  ->first();

    $usershiptoaddr = DB::table('address')->where('id',$shipto)
                  ->select('addressone','addresstwo','city','state','pincode')
                  ->first();

          // echo "<pre>";print_r($result);exit();
    $fulladdress_bill_to =  $userbilltoaddr->addressone.', '.$userbilltoaddr->addresstwo.', '.$userbilltoaddr->city.', '.$userbilltoaddr->state.', '.$userbilltoaddr->pincode;
    $usershiptoaddr_ship_to =  $usershiptoaddr->addressone.', '.$usershiptoaddr->addresstwo.', '.$usershiptoaddr->city.', '.$usershiptoaddr->state.', '.$usershiptoaddr->pincode;
    $data['bill_to'] =$fulladdress_bill_to;
    $data['ship_to'] = $usershiptoaddr_ship_to;
    $data['po_no'] = $id;
    $data['po_date'] = $po_dt;
    $data['user_name'] = $quote[0]->uname;

    // dd($result);

    $pdf = PDF::loadView('user.po_download',['result'=>$result,'data'=>$data]);

    return $pdf->download('po_report.pdf');
  }

  public function getPoSchedulesPdf($qid,$rfq_no,$usertypeget)
      {
          $quote_sches = array();

          $res = DB::table('quote_schedules')
          ->leftjoin('sub_categorys','quote_schedules.sub_cat_id','sub_categorys.id')
          ->select('quote_schedules.*','sub_categorys.sub_cat_name')
          ->where('quote_schedules.quote_id',$qid)->where('quote_schedules.quote_status',1)->whereNull('quote_schedules.deleted_at')->get();
          // dd($res);
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
             // $quote_sches[$key]['remarks'] = $value->remarks;
             // $quote_sches[$key]['kamsRemarks'] = $value->kamsRemarks;
             // $quote_sches[$key]['salesRemarks'] = $value->salesRemarks;
             $quote_sches[$key]['delivery'] = $value->delivery;
             $quote_sches[$key]['valid_till'] = $value->valid_till;
             $quote_sches[$key]['quote_status'] = $value->quote_status;
             $quote_sches[$key]['confirm_date'] = $value->confirm_date;
             $quote_sches[$key]['pickup_type'] = $value->pickup_type;
             $quote_sches[$key]['sub_cat_id'] = $value->sub_cat_id;
             $quote_sches[$key]['sub_cat_name'] = (!empty($value->sub_cat_name)) ? $value->sub_cat_name : '';

            $quote_sches[$key]['delivery_betweene'] = $this->getQuotedelByIdpdf($value->schedule_no);
            $remarksarr = $this->getremarksarrpdf($value->schedule_no,$rfq_no,$usertypeget);
           // dd($remarksarr);
           // echo "<pre>";print_r($remarksarr);exit();
           $quote_sches[$key]['remarks'] = $remarksarr['remarks'];
           $quote_sches[$key]['kamsRemarks'] = $remarksarr['camremarks'];
           // $schedules[$key]['salesRemarks'] = $remarksarr['salesremarks'];

          }

          return $quote_sches;
      }

      public function getremarksarrpdf($schedule_no,$rfq_no,$usertypeget)
      {
          $type = $usertypeget;
          // --------- customer -------------------
          $resC = DB::table('remarks')
          ->where('from','C')->orderBy('id','desc')
          ->where('rfq_no',$rfq_no)->where('sche_no',$schedule_no)->first();
          // ----------- cams remarks -----------------------------
          $resCa = DB::table('remarks');
          if($type == 'C')
          {
            $resCa = $resCa->where('to','C');
          }
          $resCa = $resCa->where('from','Kam')->orderBy('id','desc')
          ->where('rfq_no',$rfq_no)->where('sche_no',$schedule_no)->first();
          // ----------- sales remarks -----------------------------
          $resS = DB::table('remarks')
          ->where('from','Sales')->orderBy('id','desc')
          ->where('rfq_no',$rfq_no)->where('sche_no',$schedule_no)->first();
           // echo "<pre>";print_r($res);exit();
          // foreach ($res as $key => $value) {

              $data['remarks'] = (!empty($resCa)) ? $resC->remarks : '';
              $data['camremarks'] = (!empty($resCa)) ? $resCa->camremarks : '';
              $data['salesremarks'] = (!empty($resS)) ? $resS->salesremarks: '';
              // $data['from'] = $res->from;
              // $data['to'] = $res->to;

             // dd($data);
          // }

          return $data;
      }



       public function getQuotedelByIdpdf($sche)
    {



               $quote = DB::table('quote_deliveries')->where('quote_sche_no',$sche)->get()->toArray();

                   // echo "<pre>";print_r($quote);exit();

                  if(!empty($quote))
                  {
                  foreach ($quote as $key => $value) {

                    $result[$key]['sche_no'] = $value->quote_sche_no;
                    $result[$key]['to_date'] = $value->to_date;
                    $result[$key]['qty'] = $value->qty;
                    $result[$key]['id'] = $value->id;

                  }
                }
                else{
                  $result = [];
                }


                  return $result;


    }

  /*
      ---------------- first time quote submission -------------------

  */
      public function storeQuotes(Request $request)
      {
       // echo "<pre>";print_r($request->all());exit();

       try{

        $encrypted = json_encode($request->all());
        // $json = json_encode($encrypted1);
      $password = "123456";

      $decrypted = CryptoJsAes::decrypt($encrypted, $password);
      // dd($decrypted);

        $quoteArr = array();
        
        $type = Auth::user()->user_type;

        if($type == 'C')
        {
           $user_id = Auth::user()->id;
         }else{

            $user_id = $decrypted[0]['user_id'];
         }

        // $rfq_number = (!empty($request->input('rfq_number'))) ? $request->input('rfq_number') : '';
        $quote_id = "";
        foreach ($decrypted as $key => $value) {

          $array['product_id'] = $value['product_id'];
          $array['cat_id'] = $value['cat_id'];
          $array['quantity'] = $value['quantity'];
          $array['quote_type'] = $value['quote_type'];
          $array['kam_status'] = 0;
          $array['quote_schedules'] = $value['quote_schedules'];
          $array['rfq_type'] = $value['rfq_type'];
          $rfq_number = $value['rfq_number'];

          if(!empty($value['quantity']) ){
            $request = new Request($array);
              // echo "<pre>";print_r($request);exit();
            $quotes = $this->configureQuotes($request,$rfq_number,$user_id,$quote_id);


          }

        }


          // echo "<pre>";print_r($quotes);exit();
          // if(!empty($quotes))
          // {
        return response()->json(['status'=>1,
          'message' =>'success',
          'result' => 'Quote created'],
          config('global.success_status'));
          // }
          // else{

          //    return response()->json(['status'=>1,
           //       'message' =>'success',
           //       'result' => 'Quote not created'],
           //       config('global.success_status'));

          // }

      }catch(\Exception $e){

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }
   }




    /*
      ----------------  quote update -------------------

  */

      public function updateQuotes(Request $request)
      {
         // echo "<pre>";print_r($request->all());exit();
       try{

              $encrypted = json_encode($request->all());
                // $json = json_encode($encrypted1);
              $password = "123456";

              $decrypted = CryptoJsAes::decrypt($encrypted, $password);
              // dd($decrypted);

        foreach ($decrypted as $key => $value) {

          $quote_id = DB::table('quotes')->where('rfq_no',$value['rfq_number'])->where('product_id',$value['product_id'])->where('cat_id',$value['cat_id'])->whereNull('deleted_at')->select('id','user_id','kam_status')->first();
            // echo "<pre>";print_r($quote_id);exit();

          $array['product_id'] = $value['product_id'];
          $array['cat_id'] = $value['cat_id'];
          $array['quantity'] = $value['quantity'];
          $array['quote_type'] = $value['quote_type'];
          $array['rfq_type'] = $value['rfq_type'];
          $array['kam_status'] = (!empty($quote_id->kam_status)) ? $quote_id->kam_status : 0;
          $array['quote_schedules'] = $value['quote_schedules'];
          $rfq_number = $value['rfq_number'];

              // echo "<pre>";print_r($array);exit();
          $request = new Request($array);


          if($quote_id)
          {
            Quote::where('rfq_no',$rfq_number)->where('cat_id',$value['cat_id'])->delete();


            $quotes = $this->configureQuotes($request,$rfq_number,$quote_id->user_id,$quote_id->id);
          }
          else{
                 // echo "hi";exit();
           $quote_id = DB::table('quotes')->where('rfq_no',$rfq_number)->whereNull('deleted_at')->select('id','user_id')->first();
           $quoteId = "";
                 // echo "<pre>";print_r($quote_id->user_id);exit();
           $quotes = $this->configureQuotes($request,$rfq_number,$quote_id->user_id,$quoteId);
         }
       }
          // echo "<pre>";print_r($quotes);exit();

       return response()->json(['status'=>1,'message' =>'success','result' => 'Quote updated'],config('global.success_status'));




     }catch(\Exception $e){

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }
   }


    /*
      ---------------- quote configure -------------------

  */
      public function configureQuotes($request,$rfq_number=NULL,$user_id,$preQouteId=NULL)
      {
      // $rfq_num = (!empty($rfq_number)) ? $rfq_number : rand(100,9999);
       // if($request->input('quantity') != "")
       // {
        // dd($request->input('quantity'));
        $quoteArr['user_id']    = $user_id;
        $quoteArr['product_id'] = $request->input('product_id');
        $quoteArr['cat_id'] = $request->input('cat_id');
        $quoteArr['quantity'] = $request->input('quantity');
        $quoteArr['quote_type'] = $request->input('quote_type');
        $quoteArr['kam_status'] = $request->input('kam_status');
        $quoteArr['rfq_type'] = $request->input('rfq_type');
        $quoteArr['rfq_no'] = $rfq_number;
        $quoteArr['quote_no']  = rand(100,9999);

        $schedules = $request->input('quote_schedules');
         // echo "<pre>";print_r($quoteArr);exit();
        $quote = Quote::create($quoteArr);

        foreach ($schedules as $key => $value) {

          // if(!empty($value['quantity']))
          // {
           if(!empty($preQouteId))
           {

            QuoteSchedule::where('quote_id',$preQouteId)->delete();
          }
          $sche['quote_id'] = $quote['id'];
          $sche['quantity'] = $value['quantity'];
          $sche['to_date'] = $value['to_date'];
          $sche['from_date'] = $value['from_date'];
          $sche['pro_size'] = $value['pro_size'];
          $sche['kam_price'] = $value['kam_price'];
          $sche['expected_price'] = $value['expected_price'];
          $sche['plant'] = $value['plant'];
          $sche['location'] = $value['location'];
          $sche['bill_to'] = $value['bill_to'];
          $sche['ship_to'] = $value['ship_to'];
          $sche['delivery'] = $value['delivery'];
          $sche['remarks'] = $value['remarks'];
          $sche['valid_till'] = $value['valid_till'];
          $sche['schedule_no'] = $value['schedule_no'];
          $sche['kamsRemarks'] = $value['kamsRemarks'];
          $sche['kamsRemarkssp'] = $value['kamsRemarkssp'];
          $sche['kamsRemarkssh'] = $value['kamsRemarkssh'];
          $sche['confirm_date'] = $value['confirm_date'];
          $sche['pickup_type'] = $value['pickup_type'];
          $sche['salesRemarks'] = $value['salesRemarks'];
          $sche['sub_cat_id'] = $value['sub_cat_id'];
          $sche['quote_status'] = (!empty($value['quote_status'])) ? $value['quote_status'] : 0;
          $sche['pay_term'] = $value['pay_term'];
          $sche['credit_days'] = $value['credit_days'];


          // echo "<pre>";print_r($sche);exit();

          QuoteSchedule::create($sche);
        // }

      }

        // if($quote)
        // {
        //   return $quote;
        // }
        // else{

        //  return [];
        // }
    // }
    // else{

    //   return [];
    // }
      // echo "<pre>";print_r($schedules);exit();
  }


    /*
      ---------------- quote status update  -------------------

  */
      public function quotesStatusUpdate(Request $request)
      {

        try{

         $rfq_no = $request->input('rfq_no');
         $status = $request->input('status');

         $updated = Quote::where('rfq_no',$rfq_no)->update(['kam_status' => $status]);
         if($updated)
         {
           return response()->json(['status'=>1,
            'message' =>'status updated',
            'result' => 'Quote Status updated'],
            config('global.success_status'));
         }
              // echo "<pre>";print_r($quotes);exit();

       }catch(\Exception $e){

         return response()->json(['status'=>0,
          'message' =>'error',
          'result' => $e->getMessage()],
          config('global.failed_status'));
       }

     }


     /*
      ---------------- quote history customer  -------------------

  */
      public function quotesHistoryCustomer($rfq_no)
      {

        \DB::beginTransaction();

        try{

         if(Auth::check())
         {

          $user_id = Auth::user()->id;
        }


        $res = $this->getQuoteHistory($user_id,$rfq_no);




                 // echo "<pre>";print_r($res);exit();


        \DB::commit();

        if(!empty($res))
        {
         return response()->json(['status'=>1,
          'message' =>config('global.sucess_msg'),
          'result' => $res],
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



   public function getQuoteHistory($user_id=NULL,$rfq_no=NULL)
   {

     $quoteArr=array();

     $res = DB::table('quotes')
     ->leftjoin('quote_schedules','quotes.id','quote_schedules.quote_id')
     ->leftjoin('users','quotes.user_id','users.id')
     ->leftjoin('products','quotes.product_id','products.id')
     ->leftjoin('categorys','quotes.cat_id','categorys.id')
     ->leftjoin('sub_categorys','quote_schedules.sub_cat_id','sub_categorys.id')
     ->select('quotes.rfq_no','users.name','products.pro_name','products.pro_desc','quote_schedules.*','categorys.cat_name','sub_categorys.sub_cat_name')
     ->orderBy('quote_schedules.schedule_no','asc')
     ->whereNotNull('quotes.deleted_at');


     // if(!empty($user_id))
     // {
     //   $res = $res->where('quotes.user_id',$user_id);
     // }
     if(!empty($rfq_no))
     {
       $res = $res->where('quotes.rfq_no',$rfq_no);
     }

     $res = $res->get();
           // echo "<pre>";print_r($res);exit();

     foreach ($res as $key => $value) {

      $quoteArr[$key]['sc_id'] = $value->id;
      $quoteArr[$key]['name'] = $value->name;
      $quoteArr[$key]['pro_name'] = $value->pro_name;
      $quoteArr[$key]['pro_desc'] = $value->pro_desc;
      $quoteArr[$key]['size'] = $value->pro_size;
      $quoteArr[$key]['rfq_no'] = $value->rfq_no;
      $quoteArr[$key]['quantity'] = $value->quantity;
      $quoteArr[$key]['kam_price'] = $value->kam_price;
      $quoteArr[$key]['expected_price'] = $value->expected_price;
      $quoteArr[$key]['rfq_date'] = date("d-m-Y", strtotime($value->created_at));  ;
      $quoteArr[$key]['valid_till'] = $value->valid_till;
      $quoteArr[$key]['cat_name'] = $value->cat_name;
      $quoteArr[$key]['sub_cat_name'] = $value->sub_cat_name;
      $quoteArr[$key]['remarks'] = $value->remarks;



    }

    return $quoteArr;
  }


  public function quoteSchedule($quote_id)
  {
   $schedules = DB::table('quote_schedules')->where('quote_id',$quote_id)
   ->select('quantity','to_date','from_date')->whereNotNull('deleted_at')->get();

   foreach ($schedules as $key => $value) {

    $schArr[$key]['quantity'] = $value->quantity;
    $schArr[$key]['to_date'] = $value->to_date;
    $schArr[$key]['from_date'] = $value->from_date;
  }

  return $schArr;
}


      /*
      ---------------- quote list  -------------------

  */
      public function getQuotesList()
      {

        \DB::beginTransaction();

        try{


                // $user_id = Auth::user()->id;

         if(Auth::check())
         {
           $user_id =  Auth::user()->id;
           $user_type =  Auth::user()->user_type;

         }


                 // $res = $this->getQuoteHistory($user_id,$rfq_no);
         $quoteArr = array();

             // $quotes = Quote::where('user_id',$user_id)->with('schedules')
           //   ->with('product')->orderBy('updated_at','desc')

         $quotes = DB::table('quotes')->leftjoin('users','quotes.user_id','users.id')
         ->leftjoin('quote_schedules','quotes.id','quote_schedules.quote_id')
         ->leftjoin('products','quotes.product_id','products.id')
         ->leftjoin('categorys','quotes.cat_id','categorys.id')
         ->leftjoin('sub_categorys','categorys.id','sub_categorys.cat_id')
         ->select('quotes.*','users.name',DB::raw('SUM(quotes.quantity) as tot_qt'),'products.pro_desc','quotes.rfq_no','categorys.cat_name','sub_categorys.sub_cat_name','categorys.primary_image')
         // ->where('quotes.kam_status','!=',4)
         ->groupBy('quotes.rfq_no')
         ->orderBy('quotes.created_at','desc')
         ->whereNull('quotes.deleted_at');
         if(!empty($user_id) && $user_type == 'C')
         {
           $quotes = $quotes->where('quotes.user_id',$user_id);
         }
                         // ->toSql();
         $quotes = $quotes->get();
             // echo "<pre>";print_r($user_id);
             // exit();


         foreach ($quotes as $key => $value) {

          $quoteArr[$key]['quote_id'] = $value->id;
          $quoteArr[$key]['user_id'] = $value->user_id;
          $quoteArr[$key]['rfq_no'] = $value->rfq_no;
          $quoteArr[$key]['rfq_type'] = $value->rfq_type;
          $quoteArr[$key]['quantity'] = $this->rfqtotQt($value->rfq_no);
          $quoteArr[$key]['kam_status'] = $value->kam_status;
          $quoteArr[$key]['name'] = $value->name;
          $quoteArr[$key]['created_at'] = date('d-m-Y',strtotime($value->created_at));
          $quoteArr[$key]['cat_id'] = $value->cat_id;
          $quoteArr[$key]['product_id'] = $value->product_id;
          $quoteArr[$key]['cat_name'] = $value->cat_name;
          $quoteArr[$key]['sub_cat_name'] = $value->sub_cat_name;
          $quoteArr[$key]['pro_desc'] = $value->pro_desc;
          $quoteArr[$key]['quote_type'] = $value->quote_type;
          $quoteArr[$key]['status'] = $this->schedule_status($value->rfq_no);
          $quoteArr[$key]['dash_dt'] = date('jS F, Y',strtotime($value->created_at));
          $quoteArr[$key]['status_txt'] = $this->schedule_status_old($value->kam_status);
          $quoteArr[$key]['st_txt'] = $this->cusSttxt($value->rfq_no);

                    // $quoteArr[$key]['schedules'] = $value->schedules;
                    // $quoteArr[$key]['product'] = $value->product;
                    // $size = DB::table('sub_categorys')->where('pro_id',$value['product_id'])->select('pro_size')->first();
                    // $quoteArr[$key]['size'] = $size;

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


          /*
      ----------------  quote update -------------------

  */

      public function getQuoteById($id)
      {
       \DB::beginTransaction();

       try{

         $chk_quote = Quote::where('rfq_no',$id)->count();
           // echo "<pre>";print_r($chk_quote);exit();
         if($chk_quote > 0)
         {
          $quoteArr = array();


          $rfq_number = (!empty($id)) ? $id : '';

          $quote = Quote::where('rfq_no',$id)->with('schedules')->with('product')->with('category')->with('subCategory')->with('user')->orderBy('updated_at','desc')->get()->toArray();

          foreach ($quote as $key => $value) {

            if(!empty($value['schedules']))
            {
            $result[$key]['C'] = $value['sub_category']['C'];
            $result[$key]['Cr'] = $value['sub_category']['Cr'];
            $result[$key]['Phos'] = $value['sub_category']['Phos'];
            $result[$key]['S'] = $value['sub_category']['S'];
            $result[$key]['Si'] = $value['sub_category']['Si'];
            $result[$key]['cat_dese'] = $value['category']['cat_dese'];
            $result[$key]['cat_id'] = $value['category']['id'];
            $result[$key]['cat_name'] = $value['category']['cat_name'];
            $result[$key]['image_2_url'] = $value['category']['image_2'];
            $result[$key]['image_3_url'] = $value['category']['image_3'];
            $result[$key]['image_4_url'] = $value['category']['image_4'];
            $result[$key]['is_populer'] = $value['category']['is_populer'];
            $result[$key]['product_id'] = $value['product']['id'];
            $result[$key]['sizes'] = "";
            $result[$key]['slug'] = $value['product']['slug'];
            $result[$key]['status'] = $value['product']['status'];
            $result[$key]['quotest'] = $value['kam_status'];
            $result[$key]['quote_type'] = $value['quote_type'];
            $result[$key]['rfq_type'] = $value['rfq_type'];
            $result[$key]['primary_image_url'] = asset('storage/app/public/images/product/'.$value['category']['primary_image']);
            $result[$key]['schedule'] = $this->getSubcatname($value['schedules'],$value['rfq_no']);
            $result[$key]['quote_id'] = $value['id'];
            $result[$key]['user_id'] = $value['user_id'];
            $result[$key]['rfq_no'] = $value['rfq_no'];
            $result[$key]['quantity'] = $value['quantity'];
            $result[$key]['st'] = $value['kam_status'];
            $result[$key]['user_name'] = $value['user']['name'];
            $result[$key]['dt'] = date('d/m/y',strtotime($value['created_at']));
          }

          }
              // echo "<pre>";print_r($result);exit();
          \DB::commit();
          if(!empty($result))
          {
             $password = "123456";
            $encrypted = CryptoJsAes::encrypt($result, $password);
            return response()->json(['status'=>1,'message' =>'success','result' => $encrypted],config('global.success_status'));
          }
          else{

           return response()->json(['status'=>1,'message' =>'success','result' => 'Quote not updated'],config('global.success_status'));

         }
       }
       else{

         return response()->json(['status'=>1,'message' =>'Quote do no exists','result' => []],config('global.success_status'));

       }


     }catch(\Exception $e){

       \DB::rollback();

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }
   }


    /*
      ---------------- quote schedule status update  -------------------

  */
      public function updateQuoteSche(Request $request)
      {
         // echo "<pre>";print_r($request->all());exit();
        try{

          foreach ($request->all() as $key => $value) {

           $id = $value['id'];
           $status = $value['status'];
                 // echo "<pre>";print_r($id);exit();

           // $updated = QuoteSchedule::where('id',$id)->update(['quote_status' => $status]);
           $updated = DB::table('quote_schedules')->where('schedule_no',$id)->update(['quote_status' => $status]);

           if($status == 2)
           {
               $update = DB::table('quote_schedules')->where('schedule_no',$id)->whereNull('deleted_at')->first();
               // dd($updated);
               $chk_rej = DB::table('quote_schedules')->where('quote_id',$update->quote_id)->where('quote_status','!=',2)->whereNull('deleted_at')->get()->toArray();
               // dd($chk_rej);
               if(empty($chk_rej))
               {
                    DB::table('quotes')->where('id',$update->quote_id)->update(['kam_status' => 10]);
                    $rfq = DB::table('quotes')->where('id',$update->quote_id)->first();
                    // dd($rfq);

                    (new QuoteEmailController)->camHeadRejMail($rfq->rfq_no,$rfq->user_id);
               }
               


           }
         }


         return response()->json(['status'=>1,
          'message' =>'status updated',
          'result' => $updated],
          config('global.success_status'));


       }catch(\Exception $e){

         return response()->json(['status'=>0,
          'message' =>'error',
          'result' => $e->getMessage()],
          config('global.failed_status'));
       }

     }


       /*
      ---------------- re quote id submit  -------------------

  */
      public function submitRequoteId(Request $request)
      {

        try{

          foreach ($request->all() as $key => $value) {

            $sche_id = $value;

            $ckh = DB::table('requotes')->where('schedule_id',$sche_id)->first();

            if(empty($ckh))
            {
              $updated = DB::table('requotes')->insert(['schedule_id' => $sche_id]);

            }
            DB::table('quote_schedules')->where('schedule_no',$sche_id)->update(['quote_status' => 3]);


          }


          return response()->json(['status'=>1,
            'message' =>'status updated',
            'result' => 'Re-quote updated'],
            config('global.success_status'));

              // echo "<pre>";print_r($quotes);exit();

        }catch(\Exception $e){

         return response()->json(['status'=>0,
          'message' =>'error',
          'result' => $e->getMessage()],
          config('global.failed_status'));
       }

     }



   /*
      ---------------- re-quote list -------------------

  */

      public function getRequoteList()
      {
       \DB::beginTransaction();

       try{

         if(Auth::check())
         {
           $user_id =  Auth::user()->id;;

         }
           // echo "<pre>";print_r($user_id);exit();
         $quoteArr = array();



         $quote = DB::table('requotes')->leftjoin('quote_schedules','requotes.schedule_id','quote_schedules.schedule_no')
         ->leftjoin('quotes','quote_schedules.quote_id','quotes.id')
         ->leftjoin('products','quotes.product_id','products.id')
         ->leftjoin('categorys','quotes.cat_id','categorys.id')
         ->leftjoin('sub_categorys','categorys.id','sub_categorys.cat_id')
         ->select('quote_schedules.*','products.pro_desc','quotes.rfq_no','categorys.cat_name','sub_categorys.sub_cat_name','categorys.primary_image')
         ->whereNull('quote_schedules.deleted_at')
         ->where('quote_schedules.quote_status',3);
         if(!empty($user_id))
         {
           $quote = $quote->where('quotes.user_id',$user_id);
         }
         $quote = $quote->get();
              // echo "<pre>";print_r($quote);exit();


         foreach ($quote as $key => $value) {

           $quoteArr[$key]['schedule_no'] = $value->schedule_no;
           $quoteArr[$key]['pro_desc'] = $value->pro_desc;
           $quoteArr[$key]['pro_size'] = $value->pro_size;
           $quoteArr[$key]['rfq_no'] = $value->rfq_no;
           $quoteArr[$key]['quantity'] = $value->quantity;
           $quoteArr[$key]['kam_price'] = $value->kam_price;
           $quoteArr[$key]['expected_price'] = $value->expected_price;
           $quoteArr[$key]['cat_name'] = $value->cat_name;
           $quoteArr[$key]['sub_cat_name'] = $value->sub_cat_name;
           $quoteArr[$key]['p_image'] = asset('storage/app/public/images/product/'.$value->primary_image);
         }
         \DB::commit();
         if(!empty($quoteArr))
         {
          return response()->json(['status'=>1,'message' =>'success','result' => $quoteArr],config('global.success_status'));
        }
        else{

         return response()->json(['status'=>1,'message' =>'success','result' => 'Quote not updated'],config('global.success_status'));

       }



     }catch(\Exception $e){

       \DB::rollback();

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }
   }


    /*

        ---------------------------------- create update deliveries ---------------------------

    */

        public function createRfqdeliveries(Request $request)
        {
             // echo "<pre>";print_r($request->all());exit();

         \DB::beginTransaction();

         try{
          foreach ($request->all() as $key => $value) {

            $quoteArr = array();

            $schedule_no = $value['sche_no'];

            $quote_sche = DB::table('quote_deliveries')
            ->where('quote_sche_no',$value['sche_no'])
            ->first();

            if(!empty($quote_sche))
            {
               DB::table('quote_deliveries')->where('quote_sche_no',$value['sche_no'])->delete();

            }
            $schedules = $value['schedules'];
               // echo "<pre>";print_r($quoteArr);exit();
            foreach ($schedules as $key => $val) {


              $arr['quote_sche_no'] = $schedule_no;
              $arr['qty'] = $val['quantity'];
              $arr['to_date'] = $val['to_date'];


              Quotedelivery::create($arr);
            }
              // echo "<pre>";print_r($quoteArr);exit();
          }

          \DB::commit();

          return response()->json(['status'=>1,
            'message' =>'success',
            'result' => 'Quotes updated'],
            config('global.success_status'));



        }catch(\Exception $e){

         \DB::rollback();

         return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
       }

     }


        /*
      ---------------- delete  quote -------------------

  */
      public function deleteQuoteById(Request $request)
      {
        // echo "<pre>";print_r($request->all());exit();
        $arr = array();

        $id = $request->input('quote_id');
        $sche_no = DB::table('quote_schedules')->where('quote_id',$id)->select('schedule_no')->get();
        $quote = DB::table('quotes')->where('id',$id)->first();
        foreach ($sche_no as $key => $value) {

          array_push($arr,$value->schedule_no);
        }

        $dleArr = array();
        $dleArr['user_id'] = $quote->user_id;
        $dleArr['kam_id'] = $request->input('kam_id');
        $dleArr['rfq_no'] = $quote->rfq_no;
        $dleArr['sche_no'] = "";
        $dleArr['remarks'] = $request->input('remarks');

        Deleteremark::create($dleArr);

        DB::table('quote_deliveries')->whereIn('quote_sche_no',$arr)->delete();
        DB::table('quote_schedules')->where('quote_id',$id)->delete();
        DB::table('quotes')->where('id',$id)->delete();
        // return $arr;

        return response()->json(['status'=>1,
          'message' =>'success',
          'result' => 'Quote deleted'],
          config('global.success_status'));
      }




   /*
      ----------------  quote schedule list -------------------

  */

      public function getQuoteScheById($id)
      {
       \DB::beginTransaction();

       try{


         $chk_quote = Quote::where('rfq_no',$id)->count();
           // echo "<pre>";print_r($chk_quote);exit();
         if($chk_quote > 0)
         {
          $quoteArr = array();


          $rfq_number = (!empty($id)) ? $id : '';

              // $quote = Quote::where('rfq_no',$id)->with('schedules')->with('product')->with('category')->with('subCategory')->orderBy('updated_at','desc')->get()->toArray();
          $quoteArr =array();
          $quote_ids = DB::table('quotes')->where('rfq_no',$rfq_number)->whereNull('deleted_at')
          ->select('id','user_id')->get();
          foreach ($quote_ids as $key => $value) {

           array_push($quoteArr,$value->id);
           $userId = $value->user_id;
         }


         $quote = DB::table('quote_schedules')->leftjoin('quotes','quote_schedules.quote_id','quotes.id')
         ->leftjoin('products','quotes.product_id','products.id')
         ->leftjoin('categorys','quotes.cat_id','categorys.id')
         ->leftjoin('users','quotes.user_id','users.id')
         ->select('quote_schedules.*','products.pro_name','categorys.cat_name','users.name as uname','quotes.product_id','quotes.cat_id')
         ->whereIn('quote_status',[0,3])
         ->whereIn('quote_id',$quoteArr)->orderBy('id','desc')->get();
              // echo "<pre>";print_r($quote);exit();

         foreach ($quote as $key => $value) {



          $result[$key]['id']             = $value->id;
          $result[$key]['userId']         = $userId;
          $result[$key]['quote_id']       = $value->quote_id;
          $result[$key]['sizes']          = $value->pro_size;
          $result[$key]['schedule_no']    = $value->schedule_no;
          $result[$key]['created_at']     = $value->created_at;
          $result[$key]['quantity']       = $value->quantity;
          $result[$key]['kam_price']      = $value->kam_price;
          $result[$key]['expected_price'] = $value->expected_price;
          $result[$key]['delivery']       = $value->delivery;
          $result[$key]['plant']          = $value->plant;
          $result[$key]['location']       = $value->location;
          $result[$key]['bill_to']        = $value->bill_to;
          $result[$key]['ship_to']        = $value->ship_to;
          $result[$key]['rfq_no']         = $id;
          $result[$key]['valid_till']     = $value->valid_till;
          $result[$key]['to_date']        = $value->to_date;
          $result[$key]['from_date']      = $value->from_date;
          $result[$key]['remarks']        = $value->remarks;
          $result[$key]['pro_name']       = $value->pro_name;
          $result[$key]['cat_name']       = $value->cat_name;
          $result[$key]['uname']          = $value->uname;
          $result[$key]['product_id']     = $value->product_id;
          $result[$key]['cat_id']         = $value->cat_id;
          $result[$key]['kam_remarks']    = $value->kamsRemarks;






        }
              // echo "<pre>";print_r($result);exit();
        \DB::commit();
        if(!empty($result))
        {
          return response()->json(['status'=>1,'message' =>'success','result' => $result],config('global.success_status'));
        }
        else{

         return response()->json(['status'=>1,'message' =>'success','result' => 'Quote not updated'],config('global.success_status'));

       }
     }
     else{

       return response()->json(['status'=>1,'message' =>'Quote do no exists','result' => []],config('global.success_status'));

     }


   }catch(\Exception $e){

     \DB::rollback();

     return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
   }
 }



    /*
      ---------------- delete  quote schedules -------------------

  */
      public function deleteQuoteSche(Request $request)
      {

        // echo "<pre>";print_r($request->all());exit();
        $arr = array();

        $id = $request->input('sche_id');
        $sche_no = DB::table('quote_schedules')->where('id',$id)->select('schedule_no','quantity','quote_id')->first();

        $quote = DB::table('quotes')->where('id',$sche_no->quote_id)->first();

        $tot = $quote->quantity - $sche_no->quantity;

        DB::table('quotes')->where('id',$sche_no->quote_id)->update(['quantity' => $tot]);


        DB::table('quote_deliveries')->where('quote_sche_no',$sche_no->schedule_no)->delete();
        DB::table('quote_schedules')->where('id',$id)->delete();

        $dleArr = array();
        $dleArr['user_id'] = $quote->user_id;
        $dleArr['kam_id'] = $request->input('kam_id');
        $dleArr['rfq_no'] = $quote->rfq_no;
        $dleArr['sche_no'] = $sche_no->schedule_no;
        $dleArr['remarks'] = $request->input('remarks');



        Deleteremark::create($dleArr);


        $ct = DB::table('quote_schedules')->where('quote_id',$sche_no->quote_id)->get()->count();
        if($ct == 0)
        {
           DB::table('quotes')->where('id',$sche_no->quote_id)->delete();
        }

        // return $sche_no->schedule_no;exit();

        return response()->json(['status'=>1,
          'message' =>'success',
          'result' => 'Quote deleted'],
          config('global.success_status'));
      }



      /*
      ---------------- quote list  -------------------

  */
      public function getKamQuotesList()
      {

        \DB::beginTransaction();

        try{


                // $user_id = Auth::user()->id;

         if(Auth::check())
         {
           $user_id =  Auth::user()->id;
           $zone =  Auth::user()->zone;

         }


                 // $res = $this->getQuoteHistory($user_id,$rfq_no);
         $quoteArr = array();

             // $quotes = Quote::where('user_id',$user_id)->with('schedules')
           //   ->with('product')->orderBy('updated_at','desc')

         $quotes = DB::table('quotes')->leftjoin('users','quotes.user_id','users.id')
         ->leftjoin('quote_schedules','quotes.id','quote_schedules.quote_id')
         ->leftjoin('products','quotes.product_id','products.id')
         ->leftjoin('categorys','quotes.cat_id','categorys.id')
         ->leftjoin('sub_categorys','categorys.id','sub_categorys.cat_id')
         ->select('quotes.*','users.name',DB::raw("(sum(quotes.quantity)) as tot_qt"),'products.pro_desc','quotes.rfq_no','categorys.cat_name','sub_categorys.sub_cat_name','categorys.primary_image')
         // ->where('quotes.kam_status','!=',4)
         ->groupBy('quotes.rfq_no')
         ->orderBy('quotes.created_at','desc')
         ->where('users.zone',$zone)
         ->whereNull('quotes.deleted_at');
                         // ->toSql();
         $quotes = $quotes->get();
             // echo "<pre>";print_r($quotes);
             // exit();


         foreach ($quotes as $key => $value) {

          $quoteArr[$key]['quote_id'] = $value->id;
          $quoteArr[$key]['user_id'] = $value->user_id;
          $quoteArr[$key]['rfq_no'] = $value->rfq_no;
          $quoteArr[$key]['rfq_type'] = $value->rfq_type;
          $quoteArr[$key]['quantity'] = $this->rfqtotQt($value->rfq_no);
          $quoteArr[$key]['kam_status'] = $value->kam_status;
          $quoteArr[$key]['name'] = $value->name;
          $quoteArr[$key]['created_at'] = date('d-m-Y',strtotime($value->created_at));
          $quoteArr[$key]['cat_id'] = $value->cat_id;
          $quoteArr[$key]['product_id'] = $value->product_id;
          $quoteArr[$key]['cat_name'] = $value->cat_name;
          $quoteArr[$key]['sub_cat_name'] = $value->sub_cat_name;
          $quoteArr[$key]['pro_desc'] = $value->pro_desc;
          $quoteArr[$key]['quote_type'] = $value->quote_type;
          $quoteArr[$key]['status'] = $this->schedule_status($value->rfq_no);
          $quoteArr[$key]['status_txt'] = $this->schedule_status_old($value->kam_status);
          $quoteArr[$key]['st_txt'] = $this->st_txt($value->rfq_no);
                    // $quoteArr[$key]['schedules'] = $value->schedules;
                    // $quoteArr[$key]['product'] = $value->product;
                    // $size = DB::table('sub_categorys')->where('pro_id',$value['product_id'])->select('pro_size')->first();
                    // $quoteArr[$key]['size'] = $size;

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


/*-------------------------- rfq status text ---------------------------------------------*/
   public function schedule_status($rfq_no)
   {
       $sts = array();
       $resa = DB::table('quotes')
       ->leftjoin('quote_schedules','quotes.id','quote_schedules.quote_id')
       ->select('quote_schedules.quote_status')
       ->where('quotes.rfq_no',$rfq_no)
       ->whereNull('quotes.deleted_at')
       ->get();

       foreach($resa as $k => $v)
       {
           array_push($sts,$v->quote_status);
       }

       if (in_array(1, $sts) && !in_array(4, $sts) && !in_array(3, $sts))
        {
           $st = "Accepted";
        }
       elseif (in_array(4, $sts))
        {
           $st = "Delivered";
        }
       else
        {
           $st = "Pending";
        }

       return $st;
   }


   public function schedule_status_old($kam_status)
   {

       $res = DB::table('rfq_status_refs')
                 ->select('st_text')
                 ->where('status',$kam_status)
                 ->first();

       return $res->st_text;
   }

   /*--------------------------view remarks --------------------------------------------*/


    public function viewRemarks(Request $request)
    {
         \DB::beginTransaction();

       try{


           // echo "<pre>";print_r($request->sche_no);exit();
         $quoteArr = array();

         // dd('ok');

         $quotes = DB::table('remarks')->where('rfq_no',$request->rfq)->where('sche_no',$request->sche_no)->where('from','!=','SM')
         ->select('remarks','camremarks','salesremarks','created_at','to','from')
         ->orderBy('id','asc')
          ->get();
              // echo "<pre>";print_r($quotes);exit();
         // dd($quote);

         foreach ($quotes as $key => $value) {

           if($request->user_type == 'C')
           {
            // dd($request->rfq);
                 $quotesn = DB::table('remarks')->where('rfq_no',$request->rfq)->where('sche_no',$request->sche_no)->where('from','!=','SM')
                 ->where(function ($query) {
                      $query->where('from','=','C')
                            ->orWhere('to','=','C');
                  })

                 ->select('remarks','camremarks','salesremarks','created_at','to','from','rfq_no')
                 ->orderBy('id','asc')
                  ->get();

                   foreach ($quotesn as $key => $value) {
                    $quoteArr[$key]['remarks'] = $value->remarks;
                    $quoteArr[$key]['kamsRemarks'] = $value->camremarks;
                    $quoteArr[$key]['to'] = $value->to;
                    $quoteArr[$key]['from'] = $value->from;
                    $quoteArr[$key]['created_at'] = $value->created_at;
                   }



           }
           else if($request->user_type == 'Kam')
           {


                $quoteArr[$key]['remarks'] = $value->remarks;
                $quoteArr[$key]['kamsRemarks'] = $value->camremarks;
                $quoteArr[$key]['salesRemarks'] = $value->salesremarks;
                $quoteArr[$key]['to'] = $value->to;
                $quoteArr[$key]['from'] = $value->from;
                $quoteArr[$key]['created_at'] = $value->created_at;



           }
           else if($request->user_type == 'Sales')
           {

                $quoteArr[$key]['kamsRemarks'] = $value->camremarks;
                $quoteArr[$key]['salesRemarks'] = $value->salesremarks;
                $quoteArr[$key]['to'] = $value->to;
                $quoteArr[$key]['from'] = $value->from;
                $quoteArr[$key]['created_at'] = $value->created_at;


           }
           else if($request->user_type == 'SM')
           {
              $quoteskam = DB::table('remarks')->where('rfq_no',$request->rfq)->where('sche_no',$request->sche_no)->where('to','=','SM')
                 ->select('remarks','camremarks','salesremarks','created_at','to','from','rfq_no')
                 ->orderBy('id','asc')
                  ->get();
                  // dd($quoteskam);
               foreach ($quoteskam as $key => $value) {
                  $quoteArr[$key]['kamsRemarks'] = $value->camremarks;
                  $quoteArr[$key]['to'] = $value->to;
                  $quoteArr[$key]['from'] = $value->from;
                  $quoteArr[$key]['created_at'] = $value->created_at;
                }

           }


         }
         \DB::commit();
         if(!empty($quoteArr))
         {
          return response()->json(['status'=>1,'message' =>'success','result' => $quoteArr],config('global.success_status'));
        }
        else{

         return response()->json(['status'=>1,'message' =>'success','result' => 'Quote not updated'],config('global.success_status'));

       }



     }catch(\Exception $e){

       \DB::rollback();

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }
    }
   /*--------------------------view remarks --------------------------------------------*/

  /*
      ----------------  get_quote_po_by_id -------------------

  */

      public function getPoQuoteById($id)
      {
       \DB::beginTransaction();

       try{

         $chk_quote = Quote::where('rfq_no',$id)->count();
           // echo "<pre>";print_r($chk_quote);exit();
         if($chk_quote > 0)
         {
          $quoteArr = array();


          $rfq_number = (!empty($id)) ? $id : '';

          // $quote = Quote::where('rfq_no',$id)->with('schedules')->with('product')->with('category')->with('subCategory')->orderBy('updated_at','desc')->get()->toArray();

           $quote = DB::table('quotes')
           ->leftjoin('users','quotes.user_id','users.id')
           ->leftjoin('products','quotes.product_id','products.id')
           ->leftjoin('categorys','quotes.cat_id','categorys.id')
           // ->leftjoin('sub_categorys','categorys.id','sub_categorys.cat_id')
           ->select('quotes.rfq_no','quotes.rfq_type','quotes.user_id','quotes.id as qid','products.slug','products.status','categorys.*','users.id','products.id as pid','categorys.id as cid','quotes.quantity')
           ->orderBy('quotes.updated_at','desc')
           ->where('quotes.rfq_no',$id)
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
            $result[$key]['primary_image_url'] = asset('storage/app/public/images/product/'.$value->primary_image);
            // 'storage/app/public/images/product/'.$value->primary_image;
            $result[$key]['schedule'] = $this->getPoSchedules($value->qid);
            $result[$key]['quote_id'] = $value->qid;
            $result[$key]['user_id'] = $value->user_id;
            $result[$key]['rfq_no'] = $value->rfq_no;
            $result[$key]['rfq_type'] = $value->rfq_type;
            $result[$key]['quantity'] = $value->quantity;

          }
              // echo "<pre>";print_r($result);exit();
          \DB::commit();
          if(!empty($result))
          {

            $password = "123456";

            $encrypted = CryptoJsAes::encrypt($result, $password);

            return response()->json(['status'=>1,'message' =>'success','result' => $encrypted],config('global.success_status'));
          }
          else{

           return response()->json(['status'=>1,'message' =>'success','result' => 'Quote not updated'],config('global.success_status'));

         }
       }
       else{

         return response()->json(['status'=>1,'message' =>'Quote do no exists','result' => []],config('global.success_status'));

       }


     }catch(\Exception $e){

       \DB::rollback();

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }
   }


    public function getSchedules($qid)
    {
        $quote_sches = array();

        $res = DB::table('quote_schedules')->where('quote_id',$qid)->whereNull('deleted_at')->get();

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
           $quote_sches[$key]['delivery'] = $value->delivery;
           $quote_sches[$key]['valid_till'] = $value->valid_till;
           $quote_sches[$key]['quote_status'] = $value->quote_status;



        }

        return $quote_sches;
    }


    /*---------------------------- submit PO -----------------------------------------*/
      public function submitPoNew(Request $request)
      {  
           $b =  $request->letterhead->getSize();
          $a = ini_get('upload_max_filesize');
          $c = $b/1048576;
          dd('uploaded  '.$c.' M','upload_max_filesize '.$a);
          // ini_set('post_max_size', '64M');
          // ini_set('max_execution_time', 300);

            // $poArr = array();

            $poArr['rfq_no'] = $request['rfqNo'];
            $poArr['po_no'] = $request['po_no'];  
            $poArr['amdnt_no'] = $request['amdnt_no'];  

            
            // dd($request->file('letterhead')); 
            // sleep(10);
            
            if ($request->hasFile('letterhead'))
            {
              // $files = $request->file('letterhead');
              // $filename = rand(1000,9999).'-'.$file->getClientOriginalName();

 
              //  //create unique file name...
              // Storage::disk('public')->put($filename,File::get($file));



              $image = $request->letterhead; 

              $filename = rand(1000,9999).'-'.$image->getClientOriginalName();

              Storage::putFileAs('public/images/letterheadsNew', $image, $filename);

              $input['letterhead'] = $filename;

              // $name = time().$files->getClientOriginalName();
              // $files->storeAs("public/images/letterheadsNew",$name);
              // $poArr['letterhead'] = $name;
            }
            // $chk = Storage::exists("public/images/letterheads",$name);

             
            // dd($chk);

 

            $date =  date_create($request->input('po_date'));
            $po_dt = date_format($date,"Y-m-d");
            $poArr['po_date'] = $po_dt;
            $poArr['status'] = 2;

            // echo "<pre>";print_r($poArr);exit();

            // Order::create($poArr);

            return response()->json(['status'=>1,
              'message' =>'success',
              'result' => 'P.O created'],
              config('global.success_status'));
            
      }
      public function submitPo(Request $request)
      {
        // dd('ok');
         // echo "<pre>";print_r($request->all());exit();

       try{

             

            $poArr = array();

            $poArr['rfq_no'] = $request->input('rfqNo');
            $poArr['po_no'] = $request->input('po_no');
            $poArr['amdnt_no'] = $request->input('amdnt_no');
            // dd($request->file('letterhead')); 
            // sleep(10);
             
            $chk = true;

            if(!empty($request->file('letterhead')))
            {
              $image = $request->file('letterhead'); 

              $filename = rand(1000,9999).'-'.$image->getClientOriginalName();

              Storage::putFileAs('public/images/letterheads', $image, $filename);

              $poArr['letterhead'] = $filename;
              $chk = Storage::exists("public/images/letterheads",$filename);
              // $name = time().$files->getClientOriginalName();
              // $files->storeAs("public/images/letterheads",$name);
              // $poArr['letterhead'] = $name;
            }
            

             
            // dd($chk);

            if ($chk==false) 
            {
               
              return response()->json(['status'=>0,
              'message' =>'error',
              'result' => 'something went wrong File not uploaded !!'],
              config('global.success_status'));
            }
            else{

            $date =  date_create($request->input('po_date'));
            $po_dt = date_format($date,"Y-m-d");
            $poArr['po_date'] = $po_dt;
            $poArr['status'] = 2;

            // echo "<pre>";print_r($poArr);exit();

            Order::create($poArr);

            return response()->json(['status'=>1,
              'message' =>'success',
              'result' => 'P.O created'],
              config('global.success_status'));
            }





      }catch(\Exception $e){

              return response()->json(['status'=>0,
                'message' =>'error',
                'result' => $e->getMessage()],
                config('global.failed_status'));
          }
      }

    /*-----------------------------------------------------------------------------------*/


      /*
      ----------------  get_quote_po_by_id -------------------

  */

      public function getPoById($id)
      {
       \DB::beginTransaction();

       try{



           $quote = DB::table('orders')
           ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')
           ->leftjoin('users','quotes.user_id','users.id')
           ->leftjoin('products','quotes.product_id','products.id')
           ->leftjoin('categorys','quotes.cat_id','categorys.id')
           // ->leftjoin('sub_categorys','categorys.id','sub_categorys.cat_id')
           ->select('quotes.rfq_no','quotes.user_id','quotes.id as qid','products.slug','products.status','categorys.*','users.id','products.id as pid','categorys.id as cid','quotes.quantity','orders.letterhead','orders.po_no','orders.cus_po_no','orders.po_date','orders.status as po_st','orders.amdnt_no','quotes.rfq_type')
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
            $result[$key]['rfq_type'] = $value->rfq_type;
            $result[$key]['quantity'] = $value->quantity;
            $result[$key]['po_no'] = $value->po_no;
            $result[$key]['cus_po_no'] = $value->cus_po_no;
            $result[$key]['letterhead'] = asset('storage/app/public/images/letterheads/'.$value->letterhead);
            $date =  date_create($value->po_date);
            $po_dt = date_format($date,"d-m-Y");
            $result[$key]['po_date'] = $po_dt;
            $result[$key]['schedule'] = $this->getPoSchedules($value->qid);


          }
              // echo "<pre>";print_r($result);exit();
          \DB::commit();
          if(!empty($result))
          {

          $password = "123456";

          $encrypted = CryptoJsAes::encrypt($result, $password);
            return response()->json(['status'=>1,'message' =>'success','result' => $encrypted],config('global.success_status'));
          }
          else{

           return response()->json(['status'=>1,'message' =>'success','result' => 'PO not found'],config('global.success_status'));

         }



     }catch(\Exception $e){

       \DB::rollback();

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }
   }


   /*------------------------get all po --------------------------------------*/

      public function getPoAll()
      {
           \DB::beginTransaction();
          try{

            $user_id =  Auth::user()->id;


             $result = $this->allPo($user_id);

            \DB::commit();

                if(!empty($result))
                {

                  $password = "123456";
                  $encrypted = CryptoJsAes::encrypt($result, $password);
                  return response()->json(['status'=>1,
                    'message' =>'success',
                    'result' => $encrypted],
                    config('global.success_status'));
                }
        }
          catch(\Exception $e){

              \DB::rollback();

             return response()->json(['status'=>0,
              'message' =>'error',
              'result' => $e->getMessage()],
              config('global.failed_status'));

          }

    }


   /*------------------------------------------------------------------------------*/



      /*------------------------get all po kam--------------------------------------*/

      public function getPoAllKam()
      {
           \DB::beginTransaction();
          try{

            $user_id =  "";
            $user_state =  Auth::user()->zone;


             $result = $this->allPo($user_id,$user_state);

            \DB::commit();

                if(!empty($result))
                {
                  $password = "123456";
                  $encrypted = CryptoJsAes::encrypt($result, $password);
                  return response()->json(['status'=>1,
                    'message' =>'success',
                    'result' => $encrypted],
                    config('global.success_status'));
                }
        }
          catch(\Exception $e){

              \DB::rollback();

             return response()->json(['status'=>0,
              'message' =>'error',
              'result' => $e->getMessage()],
              config('global.failed_status'));

          }

    }


   /*------------------------------------------------------------------------------*/

    public function allPo($user_id=NULL,$user_state=NULL)
    {
           $quote = DB::table('orders')
           ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')
           ->leftjoin('quote_schedules','quotes.id','quote_schedules.quote_id')
           ->leftjoin('users','quotes.user_id','users.id')
           ->select('quotes.rfq_no','quotes.user_id','orders.letterhead','orders.po_no','orders.po_date','users.name','orders.status',DB::raw("(sum(quote_schedules.quantity)) as tot_qt"),'orders.amdnt_no','orders.cus_po_no')
           ->orderBy('quotes.updated_at','desc')
           ->groupBy('quotes.rfq_no');
           if(!empty($user_id))
           {
              $quote = $quote->where('quotes.user_id',$user_id);
            }
           if(!empty($user_state))
           {

              $quote = $quote->where('users.zone',$user_state);
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

          return $result;
    }


        /*
      ---------------- po status update  -------------------

  */
      public function poStatusUpdate(Request $request)
      {

        try{

         $po_no = $request->input('po_no');
         $status = $request->input('status');

         $updated = Order::where('po_no',$po_no)->update(['status' => $status]);
         if($updated)
         {
           return response()->json(['status'=>1,
            'message' =>'status updated',
            'result' => 'PO Status updated'],
            config('global.success_status'));
         }
              // echo "<pre>";print_r($quotes);exit();

       }catch(\Exception $e){

         return response()->json(['status'=>0,
          'message' =>'error',
          'result' => $e->getMessage()],
          config('global.failed_status'));
       }

     }



     public function getPoSchedules($qid)
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
             $quote_sches[$key]['kamsRemarkssp'] = $value->kamsRemarkssp;
             $quote_sches[$key]['kamsRemarkssh'] = $value->kamsRemarkssh;
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
             $quote_sches[$key]['bill_to_state'] = $value->billtocity;
             $quote_sches[$key]['ship_to_state'] = $value->shiptocity;



          }

          return $quote_sches;
      }



          /*---------------------------- update PO -----------------------------------------*/

      public function updatePo(Request $request)
      {

         // echo "<pre>";print_r($request->all());exit();

       try{



            $poArr = array();

            $po_no = $request->input('po_no');
            $poArr['amdnt_no'] = $request->input('amdnt_no');

            // $files = $request->file('letterhead');
            // if(!empty($files))
            // {

            //   $name = time().$files->getClientOriginalName();
            //   $files->storeAs("public/images/letterheads",$name);
            //   $poArr['letterhead'] = $name;
            // }

            // $date =  date_create($request->input('po_date'));
            // $po_dt = date_format($date,"Y-m-d");
            // $poArr['po_date'] = $po_dt;
            // $poArr['status'] = 2;

            // echo "<pre>";print_r($poArr);exit();

            Order::where('po_no',$po_no)->update($poArr);

            return response()->json(['status'=>1,
              'message' =>'success',
              'result' => 'P.O updated'],
              config('global.success_status'));



      }catch(\Exception $e){

              return response()->json(['status'=>0,
                'message' =>'error',
                'result' => $e->getMessage()],
                config('global.failed_status'));
          }
      }

    /*-----------------------------------------------------------------------------------*/


        /*
      ----------------  sales quote update -------------------

  */

      public function salesUpdateRfq(Request $request)
      {
         // echo "<pre>";print_r($request->all());exit();
       try{
              foreach ($request->all() as $key => $value) {

                $schedule_no = $value['schedule_no'];
                $confirm_date = $value['confirm_date'];
                // echo "<pre>";print_r($confirm_date);exit();

                QuoteSchedule::where('schedule_no',$schedule_no )->update(['confirm_date' => $confirm_date]);
              }
          // echo "<pre>";print_r($quotes);exit();

               return response()->json(['status'=>1,
                'message' =>'success',
                'result' => 'Quote updated'],
                config('global.success_status'));



         }catch(\Exception $e){

             return response()->json(['status'=>0,
              'message' =>'error',
              'result' => $e->getMessage()],
              config('global.failed_status'));
     }
   }



   /*-----------------------------------------------------------------------*/

   public function rfqtotQt($rfq_no)
   {
        $sum = 0;
        $res = Quote::where('rfq_no',$rfq_no)->select('quantity')->get();

        foreach ($res as $key => $value) {

           $sum += $value->quantity;
        }
        return $sum;
   }

   /*----------------------- PO status refs ---------------------------------*/

   public function poStatusRef($kam_status)
   {

       $res = DB::table('po_status_refs')
                 ->select('st_text')
                 ->where('status',$kam_status)
                 ->first();

       return $res->st_text;
   }

   /*-------------------------------------------------------------------------*/

   public function getUserAddress($userId)
   {
       try{

            // $user = User::where('id',$userId)
            //       ->select('addressone','addresstwo','city','state','pincode')
            //       ->first();
        //$adrrArr = array();
        $user = DB::table('users')->leftjoin('address','users.id','address.user_id')
                 ->where('users.id',$userId)->where('address.type','A')->select('users.id as uid','address.*')->get();
        
        $grp_id = DB::table('users')->where('id',$userId)->first();
        $grp_name = DB::table('users')->where('name',$grp_id->name)->select('id')->get();

        // $addrB = DB::table('users')->leftjoin('address','users.id','address.user_id')
        //          ->where('users.id',$userId)->where('address.type','B')->select('users.id as uid','address.*')->get();
        $grp_addr = array();
        foreach ($grp_name as $key => $value) {
            
           array_push($grp_addr,$value->id);
        }

        $addrB = DB::table('address')
                 ->whereIn('user_id',$grp_addr)->where('type','B')->get();


          // echo "<pre>";print_r($grp_addr);exit();

                foreach ($user as $key => $value) {

                   // if($value->type == 'A')
                   // {
                    $arr[$key]['user_id'] = $value->uid;
                    $arr[$key]['addr_id'] = $value->id;
                    $arr[$key]['addressone'] = $value->addressone;
                    $arr[$key]['addresstwo'] = $value->addresstwo;
                    $arr[$key]['addressone'] = $value->addressone;
                    $arr[$key]['city'] = $value->city;
                    $arr[$key]['state'] = $value->state;
                    $arr[$key]['pincode'] = $value->pincode;
                    $arr[$key]['type'] = $value->type;
                  // }
                }


                foreach ($addrB as $key => $value) {


                    $arrB[$key]['user_id'] = $value->user_id;
                    $arrB[$key]['addr_id'] = $value->id;
                    $arrB[$key]['addressone'] = $value->addressone;
                    $arrB[$key]['addresstwo'] = $value->addresstwo;
                    $arrB[$key]['addressone'] = $value->addressone;
                    $arrB[$key]['city'] = $value->city;
                    $arrB[$key]['state'] = $value->state;
                    $arrB[$key]['pincode'] = $value->pincode;
                    $arrB[$key]['type'] = $value->type;

                }

               if(!empty($arr))
               {

                $adrrArr['ship'] = $arr;
               }
               if(!empty($arrB))
               {

                $adrrArr['bill'] = $arrB;
               }

               $password = "123456";

               $encrypted = CryptoJsAes::encrypt($adrrArr, $password);
               return response()->json(['status'=>1, 'message' =>'success','result' =>$encrypted],
                config('global.success_status'));



         }catch(\Exception $e){

             return response()->json(['status'=>0,
              'message' =>'error',
              'result' => $e->getMessage()],
              config('global.failed_status'));
     }
   }


 /*---------------------------- plants by type ---------------------------------------------*/

   public function getPlantsByType($type)
   {
       try{

            $plants = Plant::where('type',$type)
                  ->orderBy('name')
                  ->select('id','name','code')
                  ->get();


            foreach ($plants as $key => $value) {

                 $arr[$key]['id'] = $value->id;
                 $arr[$key]['name'] = $value->name;
                 $arr[$key]['code'] = $value->code;
            }
          // echo "<pre>";print_r($plants);exit();

               return response()->json(['status'=>1,
                'message' =>'success',
                'result' => $arr],
                config('global.success_status'));



         }catch(\Exception $e){

             return response()->json(['status'=>0,
              'message' =>'error',
              'result' => $e->getMessage()],
              config('global.failed_status'));
     }
   }



    public function getQuotedelById($sche)
    {

           \DB::beginTransaction();
          try{

               $quote = DB::table('quote_deliveries')->where('quote_sche_no',$sche)->get()->toArray();

                   // echo "<pre>";print_r($quote);exit();

                  if(!empty($quote))
                  {
                  foreach ($quote as $key => $value) {

                    $result[$key]['sche_no'] = $value->quote_sche_no;
                    $result[$key]['to_date'] = $value->to_date;
                    $result[$key]['qty'] = $value->qty;
                    $result[$key]['id'] = $value->id;

                  }
                }
                else{
                  $result = [];
                }


                  return response()->json(['status'=>1,
                    'message' =>'success',
                    'result' => $result],
                    config('global.success_status'));

           }
          catch(\Exception $e){

              \DB::rollback();

             return response()->json(['status'=>0,
              'message' =>'error',
              'result' => $e->getMessage()],
              config('global.failed_status'));

          }
    }



    /*------------------- location of plants ------------------------------------*/

    public function getPlantAddr($plantId)
    {

           \DB::beginTransaction();
          try{

               $addr = DB::table('plants')->where('id',$plantId)->first();

                   // echo "<pre>";print_r($quote);exit();

                  if(!empty($addr))
                  {

                        $result['address'] = $addr->address;
                        $result['state'] = $addr->state;
                  }

                else{
                  $result = [];
                }


                  return response()->json(['status'=>1,
                    'message' =>'success',
                    'result' => $result],
                    config('global.success_status'));

           }
          catch(\Exception $e){

              \DB::rollback();

             return response()->json(['status'=>0,
              'message' =>'error',
              'result' => $e->getMessage()],
              config('global.failed_status'));

          }
    }

    /*-----------------------------------------------------------------------------*/



 /*------------------------get all delivery methods --------------------------------------*/

      public function getAllDeliveries()
      {
           \DB::beginTransaction();
        try{

            $result = DeliveryMethod::where('status',1)->get();

            \DB::commit();

                if(!empty($result))
                {
                  return response()->json(['status'=>1,
                    'message' =>'success',
                    'result' => $result],
                    config('global.success_status'));
                }
        }
          catch(\Exception $e){

              \DB::rollback();

             return response()->json(['status'=>0,
              'message' =>'error',
              'result' => $e->getMessage()],
              config('global.failed_status'));

          }

    }


   /*------------------------------------------------------------------------------*/

   public function getSubcatname($schedules,$rfq_no)
   {
      foreach ($schedules as $key => $value) {

           $sub_cat_id = $value['sub_cat_id'];

           $sub_cat = DB::table('sub_categorys')->where('id',$sub_cat_id)->select('sub_cat_name')->first();

           if(!empty($sub_cat))
           {

               $schedules[$key]['sub_cat_name'] = $sub_cat->sub_cat_name;
           }
           else{
                 $schedules[$key]['sub_cat_name'] = "";
           }

           $sct = DB::table('requote_counts')->where('sche_no',$value['schedule_no'])->first();

           $schedules[$key]['sche_ct'] = (!empty($sct)) ? $sct->counts : 0;
           $remarksarr = $this->getremarksarr($value['schedule_no'],$rfq_no);

           // echo "<pre>";print_r($remarksarr);exit();
           $schedules[$key]['remarks'] = $value['remarks'];
           $schedules[$key]['kamsRemarks'] = $value['kamsRemarks'];
           $schedules[$key]['kamsRemarkssp'] = $value['kamsRemarkssp'];
           $schedules[$key]['kamsRemarkssh'] = $value['kamsRemarkssh'];
           $schedules[$key]['salesRemarks'] = $value['salesRemarks'];

           $bill_to = DB::table('address')->where('id',$value['bill_to'])->first();
           $ship_to = DB::table('address')->where('id',$value['ship_to'])->first();

           $schedules[$key]['bill_to_state'] = $bill_to->city;
           $schedules[$key]['bill_to_addr'] = $bill_to->addressone.''.$bill_to->addresstwo.''.$bill_to->city.''. $bill_to->state.', '.$bill_to->pincode;
           $schedules[$key]['ship_to_state'] = $ship_to->city;
           $schedules[$key]['ship_to_addr'] = $ship_to->addressone.''.$ship_to->addresstwo.''.$ship_to->city.''. $ship_to->state.', '.$ship_to->pincode;

      }



        return $schedules;
   }


             /*---------------------------- update PO -----------------------------------------*/

      public function rejectScheByDate()
      {



       try{

            $todaydate = date('y-m-d h:i:s');

            QuoteSchedule::where('valid_till','<',$todaydate)->update(['quote_status'=>2]);

            // echo "<pre>";print_r($todaydate);exit();


            return response()->json(['status'=>1,
              'message' =>'success',
              'result' => 'Quote status rejected'],
              config('global.success_status'));



      }catch(\Exception $e){

              return response()->json(['status'=>0,
                'message' =>'error',
                'result' => $e->getMessage()],
                config('global.failed_status'));
          }
      }

    /*-----------------------------------------------------------------------------------*/


        /*---------------------------- submit PO -----------------------------------------*/

      public function updateLetterhead(Request $request)
      {

         // echo "<pre>";print_r($request->all());exit();

       try{

            // dd('updateLetterhead');

            $poArr = array();


                $po_no = $request->input('po_no');

                $po_data = Order::where('po_no',$po_no)->first()->toArray();
                // echo "<pre>";print_r($po_data['letterhead']);exit();
                if(!empty($po_data['letterhead']))
                {

                  @unlink(storage_path('app/public/images/letterheads/'.$po_data['letterhead']));
                }
                $poArr['cus_po_no'] = $request->input('cus_po_no');

                $files = $request->file('letterhead');
                if(!empty($files))
                {

                  $name = time().$files->getClientOriginalName();
                  $files->storeAs("public/images/letterheads",$name);
                  $poArr['letterhead'] = $name;
                }

                $chk = Storage::exists("public/images/letterheads",$name);

             
            // dd($chk);

            if ($chk==false) 
            {
              return response()->json(['status'=>0,
              'message' =>'error',
              'result' => 'something went wrong File not uploaded !!'],
              config('global.success_status'));
            }
            else{


            // echo "<pre>";print_r($poArr);exit();

                Order::where('po_no',$po_no)->update($poArr);

                return response()->json(['status'=>1,
                  'message' =>'success',
                  'result' => 'P.O updated'],
                  config('global.success_status'));

              }


      }catch(\Exception $e){

              return response()->json(['status'=>0,
                'message' =>'error',
                'result' => $e->getMessage()],
                config('global.failed_status'));
          }
      }

    /*-----------------------------------------------------------------------------------*/


        /*------------------- customer po no. count ------------------------------------*/

    public function countCusPo($cus_po_no)
    {

           \DB::beginTransaction();
          try{

               $count = DB::table('orders')->where('cus_po_no',$cus_po_no)->get()->count();

                   // echo "<pre>";print_r($count);exit();


                  return response()->json(['status'=>1,
                    'message' =>'success',
                    'result' => $count],
                    config('global.success_status'));

           }
          catch(\Exception $e){

              \DB::rollback();

             return response()->json(['status'=>0,
              'message' =>'error',
              'result' => $e->getMessage()],
              config('global.failed_status'));

          }
    }


    public function st_txt($rfq)
    {
        $res = DB::table('rfq_order_status_kam')->where('rfq_no',$rfq)
        ->select('rfq_submited','approve_pending_from_sales','reverted_by_sales_plaing','price_approved_awaited','requated','under_negotiation','quote_closed','price_accepted','price_rejected','material_invoiced','do_created','so_created','sc_created')->first();

         $arr['material_invoiced'] = (!empty($res->material_invoiced)) ? $res->material_invoiced : '';
         $arr['do_created'] = (!empty($res->do_created)) ? $res->do_created : '';
         $arr['so_created'] = (!empty($res->so_created)) ? $res->so_created : '';
         $arr['sc_created'] = (!empty($res->sc_created)) ? $res->sc_created : '';
         $arr['quote_closed'] = (!empty($res->quote_closed)) ? $res->quote_closed : '';
         $arr['under_negotiation'] = (!empty($res->under_negotiation)) ? $res->under_negotiation : '';
         $arr['requated'] = (!empty($res->requated)) ? $res->requated : '';
         $arr['price_approved_awaited'] = (!empty($res->price_approved_awaited)) ? $res->price_approved_awaited : '';
         $arr['price_accepted'] = (!empty($res->price_accepted)) ? $res->price_accepted : '';
         $arr['price_rejected'] = (!empty($res->price_rejected)) ? $res->price_rejected : '';
         $arr['reverted_by_sales_plaing'] = (!empty($res->reverted_by_sales_plaing)) ? $res->reverted_by_sales_plaing : '';
         $arr['approve_pending_from_sales'] = (!empty($res->approve_pending_from_sales)) ? $res->approve_pending_from_sales : '';
         $arr['rfq_submited'] = (!empty($res->rfq_submited)) ? $res->rfq_submited : '';

         // echo "<pre>";print_r($arr['price_rejected']);exit();
        // $data = json_decode($res, TRUE);
        if($arr['material_invoiced'] == 1)
        {
            $val = "Material Invoiced";
            // exit;
            return $val;
        }
        elseif($arr['do_created'] == 1)
        {
            $val = "Invoice Uploaded";
            // exit;
            return $val;
        }
        elseif($arr['so_created'] == 1)
        {
            $val = "SO Created";
            // exit;
            return $val;
        }

        elseif($arr['sc_created'] == 1)
        {
            $val = "SC Created";
            // exit;
            return $val;
        }
        elseif($arr['quote_closed'] == 1)
        {
            $val = "Quote Closed";
            // exit;
            return $val;
        }
        elseif($arr['under_negotiation'] == 1)
        {
            $val = "Under Negotiation";
            // exit;
            return $val;
        }
        elseif($arr['requated'] == 1)
        {
            $val = "Requoted";
            // exit;
            return $val;
        }
         elseif($arr['price_rejected'] == 1 && $arr['price_accepted'] == null)
        {
            $val = "Price Rejected By Head";
            // exit;
            return $val;
        }
         elseif($arr['price_accepted'] == 1)
        {
            $val = "Price Accepted By Head";
            // exit;
            return $val;
        }

        elseif($arr['price_approved_awaited'] == 1)
        {
            $val = "Price Approval Awaited";
            // exit;
            return $val;
        }

        elseif($arr['reverted_by_sales_plaing'] == 1)
        {
            $val = "Reverted By Sales Planning";
            // exit;
            return $val;
        }
        elseif($arr['approve_pending_from_sales'] == 1)
        {
            $val = "Approve pending from Sales Planning";
            // exit;
            return $val;
        }
        elseif($arr['rfq_submited'] == 1)
        {
            $val = "New Enquiry";
            // exit;
            return $val;
        }

    }


    public function cusSttxt($rfq)
    {
        $res = DB::table('rfq_order_status_cust')->where('rfq_no',$rfq)
        ->select('rfq_submited','quoted_by_tsml','final_quoted_by_tsml','under_negotiation','rfq_closed','material_invoiced','do_created','so_created','sc_created')->first();

         $arr['material_invoiced'] = (!empty($res->material_invoiced)) ? $res->material_invoiced : '';
         $arr['do_created'] = (!empty($res->do_created)) ? $res->do_created : '';
         $arr['so_created'] = (!empty($res->so_created)) ? $res->so_created : '';
         $arr['sc_created'] = (!empty($res->sc_created)) ? $res->sc_created : '';
         $arr['rfq_closed'] = (!empty($res->rfq_closed)) ? $res->rfq_closed : '';
         $arr['final_quoted_by_tsml'] = (!empty($res->final_quoted_by_tsml)) ? $res->final_quoted_by_tsml : '';
         $arr['under_negotiation'] = (!empty($res->under_negotiation)) ? $res->under_negotiation : '';
         $arr['quoted_by_tsml'] = (!empty($res->quoted_by_tsml)) ? $res->quoted_by_tsml : '';
         $arr['rfq_submited'] = (!empty($res->rfq_submited)) ? $res->rfq_submited : '';


         // echo "<pre>";print_r($arr);exit();
        // $data = json_decode($res, TRUE);
         if($arr['material_invoiced'] == 1)
        {
            $val = "Material Invoiced";
            // exit;
            return $val;
        }
        elseif($arr['do_created'] == 1)
        {
            $val = "Invoice Generated";
            // exit;
            return $val;
        }
        elseif($arr['so_created'] == 1)
        {
            $val = "SO Created";
            // exit;
            return $val;
        }

        elseif($arr['sc_created'] == 1)
        {
            $val = "SC Created";
            // exit;
            return $val;
        }

        elseif($arr['rfq_closed'] == 1)
        {
            $val = "RFQ Closed";
            // exit;
            return $val;
        }
        elseif($arr['final_quoted_by_tsml'] == 1)
        {
            $val = "Material Confirmed";
            // exit;
            return $val;
        }
        elseif($arr['under_negotiation'] == 1)
        {
            $val = "Under Negotiation";
            // exit;
            return $val;
        }
        elseif($arr['quoted_by_tsml'] == 1)
        {
            $val = "Quoted By TSML";
            // exit;
            return $val;
        }
        elseif($arr['rfq_submited'] == 1)
        {
            $val = "New Enquiry";
            // exit;
            return $val;
        }

    }


  public function getremarksarr($schedule_no,$rfq_no)
  {
      $type = Auth::user()->user_type;
      // --------- customer -------------------
      $resC = DB::table('remarks')
      ->where('from','C')->orderBy('id','desc')
      ->where('rfq_no',$rfq_no)->where('sche_no',$schedule_no)->first();
      // ----------- cams remarks -----------------------------
      $resCa = DB::table('remarks');
      if($type == 'C')
      {
        $resCa = $resCa->where('to','C');
      }
      $resCa = $resCa->where('from','Kam')->orderBy('id','desc')
      ->where('rfq_no',$rfq_no)->where('sche_no',$schedule_no)->first();
      // ----------- sales remarks -----------------------------
      $resS = DB::table('remarks')
      ->where('from','Sales')->orderBy('id','desc')
      ->where('rfq_no',$rfq_no)->where('sche_no',$schedule_no)->first();
       // echo "<pre>";print_r($res);exit();
      // foreach ($res as $key => $value) {

          $data['remarks'] = (!empty($resC)) ? $resC->remarks : '';
          $data['camremarks'] = (!empty($resCa)) ? $resCa->camremarks : '';
          $data['salesremarks'] = (!empty($resS)) ? $resS->salesremarks: '';
          // $data['from'] = $res->from;
          // $data['to'] = $res->to;

         // dd($data);
      // }

      return $data;
  }



    /*
      ---------------- first time quote submission -------------------

  */
      public function getRfqSt($rfqno)
      {
       // echo "<pre>";print_r($request->all());exit();

       try{

            $sts = $this->schedule_status($rfqno);

            return response()->json(['status'=>1,
              'message' =>'success',
              'result' => $sts],
              config('global.success_status'));


      }catch(\Exception $e){

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }
   }

}
