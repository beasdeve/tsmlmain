<?php

namespace App\Http\Controllers\Api\Modules\QuoteEmail;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Models\Quote;
use App\Models\Models\Plant;
use App\Models\Models\DeliveryMethod;
// use App\Mail\RfqGeneratedMail;
// use App\Mail\AcceptedRfqMail;
// use App\Mail\OrderConfirmationMail;
// use App\Mail\SalesacceptMail;
use App\ServicesMy\MailService;
use App\Models\User;
use Validator;
use Auth;
use DB;
use \PDF;
use Mail;

class QuoteEmailController extends Controller
{
    public function quotePoMail(Request $request)
    {
         $cc_email = array();

    	 $rfq_no = $request->input('rfq_no');
    	 $user_id = $request->input('user_id');
    	 
         
         $user = User::where('id',$user_id)->first();

         $cam = User::where('zone',$user->zone)->where('id','!=',$user_id)->where('user_type','Kam')->get()->toArray();

         foreach ($cam as $key => $value) {
         	 
         	  array_push($cc_email,$value['email']);
         }

         $sub = 'Your RFQ has been raised successfully'.'   '.$rfq_no;
 
         $html = 'mail.rfqgeneratedmail';

         $data = "";

    	 // $data['name'] = $user['name'];
      //    $data['email'] = $user['email'];
      //    $data['rfq_no'] = $rfq_no;
      //    $data['cc'] = $cc_email;
         // echo "<pre>";print_r($data);exit();
        (new MailService)->dotestMail($sub,$html,$user['email'],$data,$cc_email);
         // Mail::send(new RfqGeneratedMail($data));

         $msg = "Mail sent successfully";
         return response()->json(['status'=>1,'message' =>$msg],200);
    }


    // --------------------  accepted price mail ------------------------------------
    public function acceptedPriceMail(Request $request)
    {
         $cc_email = array();

         $rfq_no = $request->input('rfq_no');
         $user_id = $request->input('user_id');
         $kam_id = $request->input('kam_id');
         
         
         $user = User::where('id',$user_id)->first();

         $cam = User::where('zone',$user->zone)->where('id','!=',$user_id)->where('user_type','Kam')->get()->toArray();

         foreach ($cam as $key => $value) {
             
              array_push($cc_email,$value['email']);
         }

         $sub = 'Sales team has accepted the price, volume and delivery timeline'.'   '.$rfq_no;
 
         $html = 'mail.priceaceptancemail';

         $data = "";

         // $data['name'] = $user['name'];
         // $data['email'] = $user['email'];
         // $data['rfq_no'] = $rfq_no;
         // $data['cc'] = $cc_email;
         // echo "<pre>";print_r($data);exit();
         (new MailService)->dotestMail($sub,$html,$user['email'],$data,$cc_email);
         // Mail::send(new AcceptedRfqMail($data));

         $msg = "Mail sent successfully";
         return response()->json(['status'=>1,'message' =>$msg],200);
    }
    // -------------------------------------------------------------------------------

    // --------------------  order confirmation mail --------------------------------
    public function orderCnrfmMail(Request $request)
    {
         $cc_email = array();

         $rfq_no = $request->input('rfq_no');
         $user_id = $request->input('user_id');
         
         
         
         $user = User::where('id',$user_id)->first();

         $cam = User::where('zone',$user->zone)->where('id','!=',$user_id)->where('user_type','Kam')->get()->toArray();

         foreach ($cam as $key => $value) {
             
              array_push($cc_email,$value['email']);
         }

         $sub = 'TSML Order confirmation'.'   '.$rfq_no;
 
         $html = 'mail.orderconfirmationmail';

         $data = "";

         // $data['name'] = $user['name'];
         // $data['email'] = $user['email'];
         // $data['rfq_no'] = $rfq_no;
         // $data['cc'] = $cc_email;
         // // echo "<pre>";print_r($data);exit();

         // Mail::send(new OrderConfirmationMail($data));
         (new MailService)->dotestMail($sub,$html,$user['email'],$data,$cc_email);

         $msg = "Mail sent successfully";
         return response()->json(['status'=>1,'message' =>$msg],200);
    }
    // ------------------------------------------------------------------------------

    // --------------------  sales acceptance mail --------------------------------
    public function saleAccptMail(Request $request)
    {
         $cc_email = array();

         $rfq_no = $request->input('rfq_no');
         $user_id = $request->input('user_id');
         
                 
         $user = User::where('id',$user_id)->first();

         $cam = User::where('zone',$user->zone)->where('id','!=',$user_id)->where('user_type','Kam')->get()->toArray();

         foreach ($cam as $key => $value) {
             
              array_push($cc_email,$value['email']);
         }

         $sub = 'Your RFQ has been raised successfully'.'   '.$rfq_no;
 
         $html = 'mail.salesacceptmail';

         $data = "";

         // $data['name'] = $user['name'];
         // $data['email'] = $user['email'];
         // $data['rfq_no'] = $rfq_no;
         // $data['cc'] = $cc_email;
         // echo "<pre>";print_r($data);exit();

         // Mail::send(new SalesacceptMail($data));
         (new MailService)->dotestMail($sub,$html,$user['email'],$data,$cc_email);
         $msg = "Mail sent successfully";
         return response()->json(['status'=>1,'message' =>$msg],200);
    }
    // -----------------------------------------------------------------------------

    // -------------------  sc mail ------------------------------------------

    public function scMail(Request $request)

        {
             $cc_email = array();

             $sc_no = $request->input('sc_no');
             $po_no = $request->input('po_no');
             $user_id = $request->input('user_id');
             
             
             $user = User::where('id',$user_id)->first();

             $cam = User::where('zone',$user->zone)->where('id','!=',$user_id)->where('user_type','Kam')->get()->toArray();

             foreach ($cam as $key => $value) {
                 
                  array_push($cc_email,$value['email']);
             }

             $sub = 'Your Sales Contarct is genrated';
     
             $html = 'mail.scgeneratemail';

             $data['sc_no'] = $sc_no;
             $data['po_no'] = $po_no;

             // $data['name'] = $user['name'];
          //    $data['email'] = $user['email'];
          //    $data['rfq_no'] = $rfq_no;
          //    $data['cc'] = $cc_email;
             // echo "<pre>";print_r($data);exit();
            (new MailService)->dotestMail($sub,$html,$user['email'],$data,$cc_email);
             // Mail::send(new RfqGeneratedMail($data));

             $msg = "Mail sent successfully";
             return response()->json(['status'=>1,'message' =>$msg],200);
        }
    // -----------------------------------------------------------------------

    // --------------------  sales head acceptance mail --------------------------------
    public function saleHeadAccptMail(Request $request)
    {
         $cc_email = array();

         $rfq_no = $request->input('rfq_no');
         $user_id = $request->input('user_id');
         
                 
         $user = User::where('id',$user_id)->first();

         $cam = User::where('zone',$user->zone)->where('id','!=',$user_id)->where('user_type','Kam')->get()->toArray();

         foreach ($cam as $key => $value) {
             
              array_push($cc_email,$value['email']);
         }

         $sub = 'Congratulations! Sales team has quoted the price, volume and delivery timeline against your RFQ';
 
         $html = 'mail.salesheadaaceptmail';

         $data = "";

         // $data['name'] = $user['name'];
         // $data['email'] = $user['email'];
         // $data['rfq_no'] = $rfq_no;
         // $data['cc'] = $cc_email;
         // echo "<pre>";print_r($data);exit();

         // Mail::send(new SalesacceptMail($data));
         (new MailService)->dotestMail($sub,$html,$user['email'],$data,$cc_email);
         $msg = "Mail sent successfully";
         return response()->json(['status'=>1,'message' =>$msg],200);
    }
    // -----------------------------------------------------------------------------
    
    // ------------------------- create do mail to plants --------------------------
    public function pantDomail(Request $request)
    {


         $cc_email = array();
         $to_email = array();

         $plants = $request->input('plants');
         $rfq_no = $request->input('rfq_no');
         $so_no = $request->input('so_no');
         
         // echo "<pre>";print_r($plants);exit();
         // $user = User::where('id',$user_id)->first();
         foreach ($plants as $key => $value) {
          // dd($value);
         $plants = DB::table('plants')->leftjoin('users','plants.name','users.org_name')
         ->where('plants.code',$value)->select('users.email')->get();
         // dd($plants->email);
       if(!empty($plants))
       {
         foreach ($plants as $key => $val) {
              // dd($val->email);
              array_push($to_email,$val->email);
         }
     }
     }
        // dd($to_email);
         $sub = 'SC and SO number has been updated';
 
         $html = 'mail.douploadmail';

         $data = $so_no;

         // $data['name'] = $user['name'];
      //    $data['email'] = $user['email'];
      //    $data['rfq_no'] = $rfq_no;
      //    $data['cc'] = $cc_email;
         // echo "<pre>";print_r($data);exit();
         if(!empty($to_email)){
         foreach ($to_email as $k => $v) {
             (new MailService)->dotestMail($sub,$html,$v,$data,$cc_email);
         }
     }
        
         // Mail::send(new RfqGeneratedMail($data));

         $msg = "Mail sent successfully";
         return response()->json(['status'=>1,'message' =>$msg],200);
    }

    // -----------------------------------------------------------------------------

    // ------------------------- mail to customer on sub cat chng in sc --------------------------
    public function cusscchngmail(Request $request)
    {
         $cc_email = array();
         $user_id = $request->input('user_id');
         $mat = $request->input('mat_no');
         $po_no = $request->input('po_no');

         $mate_data = DB::table('product_size_mat_no')->leftjoin('sub_categorys','product_size_mat_no.sub_cat_id','sub_categorys.id')->leftjoin('products','sub_categorys.pro_id','products.id')
         ->leftjoin('categorys','sub_categorys.cat_id','categorys.id')->select('products.pro_name','sub_categorys.sub_cat_name','categorys.cat_name','product_size_mat_no.product_size')
         ->where('product_size_mat_no.mat_no',$mat)->first();


         $sub = 'SC material grade has been changed for PO No.  '.$po_no;
 
         $html = 'mail.scmaterialchngmail';
         
         
         $data['po_no'] = $po_no;
         $data['sub'] = $mate_data->sub_cat_name;
         $data['cat'] = $mate_data->cat_name;
         $data['pro'] = $mate_data->pro_name;
         $data['size'] = $mate_data->product_size;
        
        $user = DB::table('users')->where('id',$user_id)->first();
        // echo "<pre>";print_r($user->email);exit();
         
         $cam = User::where('zone',$user->zone)->where('id','!=',$user_id)->where('user_type','Kam')->get()->toArray();

         foreach ($cam as $key => $value) {
             
              array_push($cc_email,$value['email']);
         }
         // dd($cc_email);
         (new MailService)->dotestMail($sub,$html,$user->email,$data,$cc_email);
       
        
         // Mail::send(new RfqGeneratedMail($data));

         $msg = "Mail sent successfully";
         return response()->json(['status'=>1,'message' =>$msg],200);
    }

    // -----------------------------------------------------------------------------

        // ------------------------- mail to customer on do --------------------------
    public function cusdogmail(Request $request)
    {
         $cc_email = array();
         // $user_id = $request->input('user_id');
         $do_no = $request->input('do_no');
         // $po_no = $request->input('po_no');
        

         $sub = 'DO has been updated against your PO.';
 
         $html = 'mail.docusmail';
         

        // $cc_email = "";
        
        $data['do_no'] = $do_no;

        $do = DB::table('delivery_orders')->where('do_no',$do_no)->first();
        $so = DB::table('sc_excel_datas')->where('ordr_no',$do->so_no)->first();

        $userd = DB::table('orders')->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')
        ->leftjoin('users','quotes.user_id','users.id')->where('orders.cus_po_no',$so->Cust_Referance)->whereNull('quotes.deleted_at')->first();

        $user = DB::table('users')->where('id',$userd->id)->first();

        $cams = DB::table('users')->where('zone',$userd->zone)->where('user_type','Kam')->select('email','zone')->get();

        $plant = DB::table('plants')->leftjoin('users','plants.name','users.name')->where('plants.code',$so->Plant)->first();

        array_push($cc_email,$plant->email);

        $data['po_no'] = $so->Cust_Referance;
        $data['invoice_no'] = $do->invoice_no;
        $data['do_quantity'] = $do->do_quantity;
        $data['material_grade'] = $so->Material;
        // echo "<pre>";print_r($user->email);exit();
         
         // $cam = User::where('zone',$user->zone)->where('id','!=',$user_id)->where('user_type','Kam')->get()->toArray();

         foreach ($cams as $key => $value) {
             
              array_push($cc_email,$value->email);
         }
         // dd($cc_email);
         (new MailService)->dotestMail($sub,$html,$user->email,$data,$cc_email);
       
        
         // Mail::send(new RfqGeneratedMail($data));

         $msg = "Mail sent successfully";
         return response()->json(['status'=>1,'message' =>$msg],200);
    }

    // -----------------------------------------------------------------------------

    public function sosubmitmail(Request $request)
    {
         $cc_email = array();

         $res = DB::table('sc_excel_datas')->whereIn('id',$request->ids)->get()->toArray();
         $user = DB::table('users')->where('user_code',$request->cus_code)->first();
         $data = $res;
         // echo "<pre>";print_r($data);exit();

         $sub = 'Sales Order for PO.   '.$request->cus_po_no.', Customer Name  :  ' .$user->org_name;
 
         $html = 'mail.sosubmitmail';

         
         $email = "sourav.mondal@beas.co.in";
         $attach = "";
         $cc_email = "";

         (new MailService)->addattachmentmail($sub,$html,$email,$data,$cc_email,$attach);

         $msg = "Mail sent successfully";
         return response()->json(['status'=>1,'message' =>$msg],200);
    }

    // ------------------------- create do mail to plants excel--------------------------
    public function plantdoexcelmail(Request $request)
    {

            $data  = array();
         $cc_email = array();
         $to_email = array();

         // $plants = $request->input('ids');
         $so_no = $request->input('so_no');
         // $rfq_no = $request->input('sc_no');
         // dd($so_no);
         $res = DB::table('sc_excel_datas')->where('ordr_no',$so_no)->get()->toArray();
         $data['excel'] = $res;
         // $data[0]['new'] = 1;
         // echo "<pre>";print_r($res);exit();
         $arr = array();
         
         foreach ($res as $key => $value) {

               $plants = DB::table('plants')->leftjoin('users','plants.name','users.org_name')
                     ->where('plants.code',$value->Plant)->select('users.email')->first();
 
                array_push($to_email,$plants->email);

              $userbill = DB::table('users')->where('user_code',$value->Sold_To_Party)->first();
              $usership = DB::table('users')->where('user_code',$value->Ship_To_Party)->first();
              $mat_id = DB::table('product_size_mat_no')->where('mat_no',$value->CustomarMaterialNumber)->first();
              $matdetails = DB::table('sub_categorys')->where('id',$mat_id->sub_cat_id)->first();
              $paytems = DB::table('sap_payment_terms')->where('payment_terms_code',$value->Paymentterms)->first();
              $frght = DB::table('sap_freight')->where('freight_code',$value->Freight)->first();
              $frght_indc = DB::table('sap_freight_indication')->where('freight_indication_code',$value->FreightIndicator)->first();
              
              $cuspo = DB::table('sc_excel_datas')->where('ordr_no',$value->ordr_no)->first();
              $rfq_no = DB::table('orders')->where('cus_po_no',$cuspo->Cust_Referance)->first();
              // dd($rfq_no);
              $rfq_data = DB::table('quotes')->leftjoin('quote_schedules','quotes.id','quote_schedules.quote_id')->where('quotes.rfq_no',$rfq_no->rfq_no)->where('quotes.rfq_no',$rfq_no->rfq_no)->whereNull('quotes.deleted_at')
              ->whereNull('quote_schedules.deleted_at')->first();
              // dd($rfq_data);

              $bill_to = DB::table('address')->where('id',$rfq_data->bill_to)->first();
              $ship_to = DB::table('address')->where('cus_code',$cuspo->Ship_To_Party)->first();
            // dd($ship_to);
              $shiptoname = DB::table('users')->where('id',$ship_to->user_id)->first();

              $arr['bill_to_code'] = $userbill->user_code;
              $arr['bill_to_name'] = $userbill->org_name;

              $arr['chrome'] = explode("-",$matdetails->Cr);
              $arr['c'] = explode("-",$matdetails->C);
              $arr['mois'] = 0;
              $arr['over'] = $userbill->pref_product_size;
              $arr['phos'] = explode("-",$matdetails->Phos);
              $arr['sulfur'] = explode("-",$matdetails->S);
              $arr['silica'] = explode("-",$matdetails->Si);
              $arr['tdc'] = $userbill->is_tcs_tds_applicable;
              $arr['ti'] = explode("-",$matdetails->Ti);
              $arr['under'] = $userbill->pref_product_size;

              $arr['paytems'] = $paytems->payment_terms_dec;
              $arr['bill_add'] = $bill_to->addressone.','.$bill_to->addresstwo.','.$bill_to->addresstwo.','.$bill_to->state;
              $arr['ship_add'] = $ship_to->addressone.','.$ship_to->addresstwo.','.$ship_to->addresstwo.','.$ship_to->state;
              $arr['sub_cat'] = $matdetails->sub_cat_name.' - '.$matdetails->code.' - '.$mat_id->product_size;
              $arr['frieght'] = $frght->freight_dec;
              $arr['frght_indc'] = $frght_indc->freight_indication_dec;
              $arr['shiptoname'] = $shiptoname->org_name;
              
              
           $data['cred'][$key] = $arr;
            
         }

        // dd($data);
         $sub = 'SC has been updated';
 
         $html = 'mail.plantdodetailsmail';

         // echo "<pre>";print_r($to_email);exit();
         if(!empty($to_email)){
         foreach ($to_email as $k => $v) {
             (new MailService)->dotestMail($sub,$html,$v,$data,$cc_email);
         }
     }
        
         // Mail::send(new RfqGeneratedMail($data));

         $msg = "Mail sent successfully";
         return response()->json(['status'=>1,'message' =>$msg],200);
    }

    // -----------------------------------------------------------------------------
// ------------------------------- po edit mail ------------------------------------
    public function poEditMail(Request $request)
    {
         $cc_email = array();

         $res = DB::table('orders')->where('po_no',$request->po_no)->first();
         $user = DB::table('users')->where('id',$request->user_id)->first();
         $cams =  DB::table('users')->where('zone',$user->zone)->where('user_type','Kam')->get();
         $data['po_no'] = $res->cus_po_no;
         // echo "<pre>";print_r($data);exit();

         $sub = 'PO No.   '.$res->cus_po_no.', has been amended';
 
         $html = 'mail.po_amend_mail';

         
         // $email = "sourav.mondal@beas.co.in";
         $attach = "";
         $cc_email = array();

         foreach ($cams as $key => $value) {
             
              array_push($cc_email,$value->email);
         }
         // dd($user->email);
         (new MailService)->dotestMail($sub,$html,$user->email,$data,$cc_email);

         $msg = "Mail sent successfully";
         return response()->json(['status'=>1,'message' =>$msg],200);
    }

    // ------------------------------------------------------------------------------



}
