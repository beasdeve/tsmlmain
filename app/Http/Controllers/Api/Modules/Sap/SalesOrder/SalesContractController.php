<?php

namespace App\Http\Controllers\Api\Modules\Sap\SalesOrder;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Models\SalesContarct;
use App\Models\Models\SalesContractMaterial;
use App\Models\Models\SalesContarctSpecs;
use App\Models\Models\ScPriceDetail;
use App\Models\Models\SalesOrder;
use App\Models\Models\ScPermissible;
use App\Models\Models\ScmaterialDescription;
use App\ServicesMy\MailService;
use Nullix\CryptoJsAes\CryptoJsAes;
use DB;

class SalesContractController extends Controller
{
    public function salesCntSubmit(Request $request)
    {    
         try{ 
                 // echo "<pre>";print_r($request->all());exit();
          // foreach ($request->all() as $key => $value) {
            
           $po_details = $request->input('po_details');

           $contract['po_no'] = $po_details['po_no'];
           $contract['contract_ty'] = $po_details['contract_ty'];
           $contract['sales_grp'] = $po_details['sales_grp'];
           $contract['qty_cont'] = $po_details['qty_cont'];
           $contract['net_val'] = $po_details['net_val'];
           $contract['sold_to_party'] = $po_details['sold_to_party'];
           $contract['ship_to_party'] = $po_details['ship_to_party'];
           $contract['sold_to_addr'] = $po_details['sold_to_addr'];
           $contract['ship_to_addr'] = $po_details['ship_to_addr'];
           $contract['cus_ref'] = $po_details['cus_ref'];
           $contract['cus_ref_dt'] = $po_details['cus_ref_dt'];
           $contract['shp_cond'] = $po_details['shp_cond'];
           $contract['sales_org'] = $po_details['sales_org'];
           $contract['dis_chnl'] = $po_details['dis_chnl'];
           $contract['div'] = $po_details['div'];
           $contract['sales_ofc'] = $po_details['sales_ofc'];
           $contract['cost_ref'] = $po_details['cost_ref'];
          
          // echo "<pre>";print_r();exit();
           $id = SalesContarct::create($contract);

           $contarctId = $id['id'];

            $inco_form = $request->input('inco_form');
           
              $arr['contarct_id'] = $contarctId;
              $arr['incoterms'] = $inco_form['incoterms'];
              $arr['pay_terms'] = $inco_form['pay_terms'];
              $arr['freight'] = $inco_form['freight'];
              $arr['cus_grp'] = $inco_form['cus_grp'];
              $arr['fr_ind'] = $inco_form['fr_ind'];

              // echo "<pre>";print_r($arr);exit();
              $con_mat_id = SalesContractMaterial::create($arr);


           $materials = $request->input('material');


           foreach ($materials as $key => $value) {

              $mat_desc['con_mat_id'] = $con_mat_id['id'];
              $mat_desc['mat_code'] = $value['mat_code'];
              $mat_desc['pcode'] = $value['pcode'];
              $mat_desc['rfq_no'] = $value['rfq_no'];
              $mat_desc['total'] = $value['total'];
             
              $sid = ScmaterialDescription::create($mat_desc);
                      
              foreach ($value['specs'] as $ke => $valu) {

                        $specs['mat_id'] = $sid['id'];
                        $specs['comp'] = $valu['comp'];
                        $specs['max'] = $valu['max'];
                        $specs['min'] = $valu['min'];
                        

                        SalesContarctSpecs::create($specs);
                      }
                      

                      // foreach ($value['per_percent'] as $kes => $va) {

                        // $spe['mat_id'] = $sid['id'];
                        // $spe['mat_code'] = $value['per_percent']['mat_code'];
                        // $spe['perm_percent'] = $value['per_percent']['perm_percent'];
                        // $spe['umo'] = $value['per_percent']['umo'];
                        // $spe['chartcs'] = $value['per_percent']['character'];
                        

                        // ScPermissible::create($spe);
                      // }
                      // echo "<pre>";print_r($spe);exit();

                      

                      foreach ($value['price_det'] as $k => $v) {
                           
                        
                        $priceDet['mat_id'] = $sid['id'];
                        $priceDet['mat_code'] = $value['mat_code'];
                        $priceDet['cnty'] = $v['cnty'];
                        $priceDet['des'] = $v['des'];
                        $priceDet['amt'] = $v['amt'];


                        ScPriceDetail::create($priceDet);
                       
                      }

                      
                       // echo "<pre>";print_r($priceDet);exit();

           }
          // }
                  
            return response()->json(['status'=>1,
                    'message' =>'success',
                    'result' => $contarctId],
                    config('global.success_status'));


        }catch(\Exception $e){

             return response()->json(['status'=>0,
              'message' =>'error',
              'result' => $e->getMessage()],config('global.failed_status'));
       }
    }


     // ----------------------------- get all price braeks --------------------------------------------

     public function priceBreakFetch($po_no)
      {

          try{ 
                   $encrypted = array();

                   $res = DB::table('orders')->leftjoin('sc_transactions','orders.rfq_no','sc_transactions.rfq_no')
                   ->leftjoin('plants','sc_transactions.plant','plants.id')
                   ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')
                   ->leftjoin('users','quotes.user_id','users.id')
                   ->groupBy('sc_transactions.mat_code')
                       ->select('sc_transactions.*','plants.code as pcode','users.name','orders.po_date','orders.cus_po_no','orders.po_date','users.user_code','users.addressone','users.addresstwo','users.city','users.state','users.pincode','users.id as uid')->where('orders.po_no',$po_no)->get();
                   // echo "<pre>";print_,'orders.po_date')->where('orders.po_no',$po_no)->get();
                   // echo "<pre>";print_r($newcount);exit();

                  if(!empty($res))
                  {
                   foreach ($res as $key => $value) {
                    
                     $data[$key]['id'] = $value->id;
                     $data[$key]['user_id'] = $value->uid;
                     $data[$key]['code'] = $value->code;
                     $data[$key]['cus_name'] = $value->name;
                     $data[$key]['po_date'] = $value->po_date;
                     $data[$key]['value'] = $value->value;
                     $data[$key]['mat_code'] = $value->mat_code;
                     $data[$key]['pcode'] = $value->pcode;
                     $data[$key]['rfq_no'] = $value->rfq_no;
                     $data[$key]['cus_po_no'] = $value->cus_po_no;
                     $data[$key]['po_date'] = $value->po_date;
                     $data[$key]['user_code'] = $value->user_code;
                     $data[$key]['addressone'] = $value->addressone;
                     $data[$key]['addresstwo'] = $value->addresstwo;
                     $data[$key]['odr_qty'] = $this->orderQty($value->mat_code,$po_no);//qty per size
                     $data[$key]['city'] = $value->city;
                     $data[$key]['state'] = $value->state;
                     $data[$key]['pincode'] = $value->pincode;
                     $data[$key]['net_value'] = $this->scNetValue($po_no);
                     $data[$key]['qty_ct'] = $this->qty_ct($po_no);
                     $data[$key]['tot_qty'] = $this->rfqTotQty($value->rfq_no);//total rfq qty
                     $data[$key]['price_det'] = $this->priceBreakById($value->mat_code,$value->rfq_no);
                     $data[$key]['specs'] = $this->subcatspecs($value->mat_code);
                     $data[$key]['total'] = $this->totalRfqPrice($value->schedule);

           
                   }

                   $password = "123456";
                   $encrypted = CryptoJsAes::encrypt($data, $password);
                 }
             
              return response()->json(['status'=>1,
                'message' =>'success',
                'result' => $encrypted],
                config('global.success_status'));


        }catch(\Exception $e){

         return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
       }

         
      }

   // ---------------------------------------------------------------------------

  // ----------------------------- get all price braeks by mat no. --------------

     public function priceBreakById($mat_no,$rfq_no)
      {

          
                   
                   $res = DB::table('sc_transactions')->leftjoin('price_masters','sc_transactions.code','price_masters.code')
                       ->select('sc_transactions.*','price_masters.component')->where('sc_transactions.mat_code',$mat_no)->where('sc_transactions.rfq_no',$rfq_no)->get();
                    // echo "<pre>";print_r($res);exit();
                    foreach ($res as $key => $value) {
                      
                        $arr[$key]['cnty'] = $value->code;
                        $arr[$key]['des'] = $value->component;
                        $arr[$key]['amt'] = $value->value;
                    }


              return $arr;



         
      }

   // ---------------------------------------------------------------------------

     public function subcatspecs($mat_no)
      {

          
                   
                   $res = DB::table('sc_transactions')->leftjoin('product_size_mat_no','sc_transactions.mat_code','product_size_mat_no.mat_no')
                   ->leftjoin('sub_categorys','product_size_mat_no.sub_cat_id','sub_categorys.id')
                       ->select('sc_transactions.mat_code','sub_categorys.*')->where('sc_transactions.mat_code',$mat_no)->get();

                    foreach ($res as $key => $value) {
                        
                        $cr = explode("-",str_replace("%","",$value->Cr));
                        $c = explode("-",str_replace("%","",$value->C));
                        $Phos = explode("-",str_replace("%","",$value->Phos));
                        $s = explode("-",str_replace("%","",$value->S));
                        $si = explode("-",str_replace("%","",$value->Si));
                        $ti = explode("-",str_replace("%","",$value->Ti));

                        $arr['cr_max'] = (!empty($c[0]) ? $c[0] : '');
                        $arr['cr_min'] = (!empty($cr[1]) ? $cr[1] : '');
                        $arr['c_max'] = (!empty($c[0]) ? $c[0] : '');
                        $arr['c_min'] = (!empty($c[1]) ? $c[1] : '');
                        $arr['phos_max'] = (!empty($Phos[0]) ? $Phos[0] : '');
                        $arr['phos_min'] = (!empty($Phos[1]) ? $Phos[1] : '');
                        $arr['s_max'] = (!empty($s[0]) ? $s[0] : '');
                        $arr['s_min'] = (!empty($s[1]) ? $s[1] : '');
                        $arr['si_max'] = (!empty($si[0]) ? $si[0] : '');
                        $arr['si_min'] = (!empty($si[1]) ? $si[1] : '');
                        $arr['ti_max'] = (!empty($ti[0]) ? $ti[0] : '');
                        $arr['ti_min'] = (!empty($ti[1]) ? $ti[1] : '');
                        $arr['uom'] = "%";
                    }
                   // echo "<pre>";print_r($newcount);exit();
             
              return $arr;



         
      }


      public function totalRfqPrice($sche)
      {
              $tot_price = DB::table('quote_schedules')->where('schedule_no',$sche)
                    ->whereNull('deleted_at')->first();
                   // echo "<pre>";print_r($sche);exit();
                    if(!empty($tot_price))
                    {

               $tot_price = $tot_price->quantity * $tot_price->kam_price;
            }else{

               $tot_price = "";
            }

            return $tot_price;
      }

        // ---------------------------- contarct no. update ---------------------------

      public function updateContarctsNo(Request $request)
      {

          try{   
                 $date = $request->input('date');
                     $dt = date("Y-m-d", strtotime($date));
                   SalesContarct::where('id',$request->input('id'))->update(['sc_no' => $request->input('sc_no'),'sc_dt' => $dt]);
             
              return response()->json(['status'=>1,
                'message' =>'success',
                'result' => 'Contract no. updated'],
                config('global.success_status'));


        }catch(\Exception $e){

         return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
       }

         
      }
      // ----------------------------------------------------------------------------------


      // ---------------------------- prepare so list ---------------------------

      public function prepareSoList()
      {

          try{   
                 $res = DB::table('sales_contracts')->leftjoin('orders','sales_contracts.po_no','orders.po_no')->select('sales_contracts.*','orders.po_date')->get()->toArray();
             
              return response()->json(['status'=>1,
                'message' =>'success',
                'result' => $res],
                config('global.success_status'));


        }catch(\Exception $e){

         return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
       }

         
      }
      // --------------------------------------------------------------------


   // ----------------------------- submit so -------------------------

     public function so_submit(Request $request)
      {

          try{ 
               
               $data['transact_id'] = $request->input('transact_id');   
               $data['co_no'] = $request->input('co_no');
               $data['po_no'] = $request->input('po_no');
               $data['pay_proc'] = $request->input('pay_proc');
               $data['fin_doc_no'] = $request->input('fin_doc_no');
               $data['user_id'] = $request->input('user_id');
               $data['order_type'] = $request->input('order_type');   
               $data['sales_org'] = $request->input('sales_org');
               $data['dis_chnl'] = $request->input('dis_chnl');
               $data['division'] = $request->input('division');
               $data['sales_ofc'] = $request->input('sales_ofc');
               $data['sales_grp'] = $request->input('sales_grp');
               
                   // echo "<pre>";print_r($newcount);exit();
             SalesOrder::create($data);
              return response()->json(['status'=>1,
                'message' =>'success',
                'result' => 'Submitted'],
                config('global.success_status'));


        }catch(\Exception $e){

         return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
       }

         
      }

   // ---------------------------------------------------------------------------

   // ----------------------------- plant id -------------------------

     public function getPlantId(Request $request)
      {

          try{ 
               
               $plant = DB::table('plants')->where('name',$request->input('data'))->first();
               
                   // echo "<pre>";print_r($newcount);exit();
             if(!empty($plant))
             {
               $id = $plant->id;
             }else{

              $id = "";
             }
              return response()->json(['status'=>1,
                'message' =>'success',
                'result' => $id],
                config('global.success_status'));


        }catch(\Exception $e){

         return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
       }

         
      }

   // ---------------------------------------------------------------------------


      public function scNetValue($po_no)
      {
         $sum = 0;

         $res = DB::table('orders')->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')
         ->leftjoin('quote_schedules','quotes.id','quote_schedules.quote_id')
         ->whereNull('quotes.deleted_at')->whereNull('quote_schedules.deleted_at')
         ->where('orders.po_no',$po_no)->select('quote_schedules.kam_price')->get();

         foreach ($res as $key => $value) {
          
            $sum += $value->kam_price;
         }

         return $sum;
      }

      public function qty_ct($po_no)
      {
         $sum = 0;

         $res = DB::table('orders')->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')
         ->leftjoin('quote_schedules','quotes.id','quote_schedules.quote_id')
         ->whereNull('quotes.deleted_at')->whereNull('quote_schedules.deleted_at')
         ->where('orders.po_no',$po_no)->select('quote_schedules.quantity')->get();

         foreach ($res as $key => $value) {
          
            $sum += $value->quantity;
         }

         return $sum;
      }


   // ----------------------------- sc all po-------------------------

     public function getAllScPo()
      {

          try{ 
               
            $quote = DB::table('orders')
           ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')
           ->leftjoin('quote_schedules','quotes.id','quote_schedules.quote_id')
           ->leftjoin('users','quotes.user_id','users.id')
           ->leftjoin('sales_contracts','orders.po_no','sales_contracts.po_no')    
           ->select('quotes.rfq_no','quotes.user_id','orders.letterhead','orders.po_no','orders.po_date','users.name','orders.status',DB::raw("(sum(quote_schedules.quantity)) as tot_qt"),'orders.amdnt_no','orders.cus_po_no','quotes.created_at','sales_contracts.sc_no','sales_contracts.created_at as sc_dt')
           ->orderBy('quotes.updated_at','desc')
           ->groupBy('quotes.rfq_no');

           $quote = $quote->whereNull('quotes.deleted_at')->where('quote_schedules.quote_status',1)->whereNotNull('orders.cus_po_no')
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
            $result[$key]['rfq_date'] = date('m-d-y',strtotime($value->created_at));
            $result[$key]['sc_no'] = $value->sc_no;
            $result[$key]['sc_date'] = date('m-d-y',strtotime($value->sc_dt));

           

          }

                   $password = "123456";
                   $encrypted = CryptoJsAes::encrypt($result, $password);
        }
        
        
              return response()->json(['status'=>1,
                'message' =>'success',
                'result' => $encrypted],
                config('global.success_status'));


        }catch(\Exception $e){

         return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
       }

         
      }

   // ---------------------------------------------------------------------------

      public function orderQty($mat_code,$po_no)
      { 
        $sub_cat = DB::table('product_size_mat_no')->where('mat_no',$mat_code)->first();
        
        $res = DB::table('orders')
         ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')
         ->leftjoin('quote_schedules','quotes.id','quote_schedules.quote_id')
         ->where('orders.po_no',$po_no)->whereNull('quotes.deleted_at')->whereNull('quote_schedules.deleted_at')->where('quote_schedules.sub_cat_id',$sub_cat->sub_cat_id)->first();

         if(!empty($res))
         {
            $qty = $res->quantity;
         }
         else{

            $qty = "";
         }
         return $qty;
      }



 // ---------------------------- prepare so from sc ---------------------------

      public function getSoSc($so_no)
      {

          try{   

            $arr = array();
            
                 $res = DB::table('sales_contracts')
                 ->leftjoin('sap_sales_organization','sales_contracts.sales_org','sap_sales_organization.sales_orgerms_code')
                 ->leftjoin('sap_contract_type','sales_contracts.contract_ty','sap_contract_type.contract_type_code')
                 ->leftjoin('sap_distribution_channel','sales_contracts.dis_chnl','sap_distribution_channel.distr_chan_code')
                 ->leftjoin('sap_division','sales_contracts.div','sap_division.division_code')
                 ->leftjoin('sap_sales_office','sales_contracts.sales_ofc','sap_sales_office.sales_office_code')
                 ->leftjoin('sap_sales_group','sales_contracts.sales_grp','sap_sales_group.sales_group_code')
                 ->leftjoin('orders','sales_contracts.po_no','orders.po_no')
                 ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')
                 ->leftjoin('users','quotes.user_id','users.id')
                 ->select('sales_contracts.sc_no','sales_contracts.sc_dt','users.org_name','sap_sales_organization.sales_orgerms_code as id','sap_sales_organization.sales_orgerms_dec','sap_distribution_channel.distr_chan_code as disid','sap_distribution_channel.distr_chan_terms_dec','sap_distribution_channel.distr_chan_code','sap_division.division_code as divid','sap_division.division_dec','sap_sales_office.sales_office_code as ofcid','sap_sales_office.sales_office_dec','sap_sales_group.sales_group_code as salesgrpcode','sap_sales_group.sales_group_dec','users.id as uid','sales_contracts.id as transactid','orders.rfq_no','sap_contract_type.contract_type_code','sap_contract_type.contract_type_dec')
                 ->where('sales_contracts.sc_no',$so_no)
                 ->whereNull('quotes.deleted_at')
                 ->first();
               

               if(!empty($res))
               {
                   $arr['sc_no'] = $res->sc_no;
                   $arr['sc_dt'] = date("d-m-Y", strtotime($res->sc_dt));
                   $arr['org_name'] = $res->org_name;
                   $arr['sales_org_code'] = $res->id;
                   $arr['sales_orgerms_dec'] = $res->sales_orgerms_dec;
                   $arr['disid'] = $res->disid;
                   $arr['distr_chan_terms_dec'] = $res->distr_chan_terms_dec;
                   $arr['distr_chan_code'] = $res->distr_chan_code;
                   $arr['divid'] = $res->divid;
                   $arr['division_dec'] = $res->division_dec;
                   $arr['ofcid'] = $res->ofcid;
                   $arr['sales_office_dec'] = $res->sales_office_dec;
                   $arr['salesgrpcode'] = $res->salesgrpcode;
                   $arr['sales_group_dec'] = $res->sales_group_dec;
                   $arr['cont_code'] = $res->contract_type_code;
                   $arr['cont_dec'] = $res->contract_type_dec;
                   $arr['user_id'] = $res->uid;
                   $arr['sc_id'] = $res->transactid;
                   $arr['rfq_no'] = $res->rfq_no;

               }
              return response()->json(['status'=>1,
                'message' =>'success',
                'result' => $arr],
                config('global.success_status'));


        }catch(\Exception $e){

         return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
       }

         
      }
      // --------------------------------------------------------------------

      public function rfqTotQty($rfq_no)
      {    

           $sum = 0;

           $res = DB::table('quotes')->where('rfq_no',$rfq_no)->whereNull('deleted_at')
           ->select('quantity')->get();

           foreach ($res as $key => $value) {
               
               $sum+=  $value->quantity;
           }

           return $sum;
      }


    // --------------------  sc excel mail ------------------------------------
    public function scExcelMail(Request $request)
    {
         $cc_email = array();

         $res = DB::table('sc_excel_datas')->whereIn('id',$request->ids)->get()->toArray();
         $user = DB::table('users')->where('user_code',$request->cus_code)->first();
         $data = $res;
         // echo "<pre>";print_r($data);exit();

         $sub = 'Sales Contract for PO.   '.$request->cus_po_no.', Customer Name  :  ' .$user->org_name;
 
         $html = 'mail.scexcelmail';

         
         $email = "mihirbhunia.partners@tatasteelmining.com";
         $attach = "";
         $cc_email = ["rahul.maurya@mjunction.in"];

         (new MailService)->addattachmentmail($sub,$html,$email,$data,$cc_email,$attach);

         $msg = "Mail sent successfully";
         return response()->json(['status'=>1,'message' =>$msg],200);
    }


     // ---------------------------- prepare so from sc ---------------------------

      public function getallexcelsc()
      {

          try{   
                 $data = array();
                 $res = DB::table('sc_excel_datas')
                 // ->leftjoin('orders','sc_excel_datas.Cust_Referance','orders.cus_po_no')
                 // ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')
                 // ->leftjoin('users','quotes.user_id','users.id')
                 // ->select('sc_excel_datas.id','sc_excel_datas.Cust_Referance')
                 // ->whereNull('quotes.deleted_at')
                 ->get();
              
               // echo "<pre>";print_r($res);exit();
                if(!empty($res))
                {
              foreach ($res as $key => $value) {
                  
                  $resa = DB::table('orders')
                 ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')
                 ->leftjoin('users','quotes.user_id','users.id')
                 ->select('orders.po_date','users.org_name')->where('orders.cus_po_no',$value->Cust_Referance)
                 ->whereNull('quotes.deleted_at')->first();


                  $data[$key]['id'] = $value->id;
                  $data[$key]['cus_po_no'] = $value->Cust_Referance;
                  $data[$key]['po_date'] = $resa->po_date;
                  $data[$key]['cus_name'] = $resa->org_name;
                  $data[$key]['Material'] = $value->Material;
                  $data[$key]['Plant'] = $value->Plant;
                  $data[$key]['sc_no'] = $value->sc_no;
                  $data[$key]['ordr_no'] = $value->ordr_no;
                  $data[$key]['finance_no'] = $value->finance_no;
                  $data[$key]['payment_proc'] = $value->payment_proc;
                  $data[$key]['qty_tsml'] = $value->QtyContractTSML;
                  $data[$key]['qty'] = $value->Quantity;

              }

              $password = "123456";
              $encrypted = CryptoJsAes::encrypt($data, $password);
            }
              return response()->json(['status'=>1,
                'message' =>'success',
                'result' => $encrypted],
                config('global.success_status'));


        }catch(\Exception $e){

         return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
       }

         
      }
      // --------------------------------------------------------------------

     // ---------------------------- update excel sc ---------------------------

      public function upexcelsc(Request $request)
      {

          try{   

              $encrypted = json_encode($request->all());
                // $json = json_encode($encrypted1);
              $password = "123456";

              $decrypted = CryptoJsAes::decrypt($encrypted, $password);
              // dd($decrypted);
            if(empty($decrypted['ordr_no']) && empty($decrypted['finance_no']) &&empty($decrypted['payment_proc']))
            {
                 $chk = DB::table('sc_excel_datas')->where('sc_no',$decrypted['sc_no'])->get()->toArray();
              // echo "<pre>";print_r($chk);exit();
            
            if(empty($chk))
            {
                 $res = DB::table('sc_excel_datas')
                 ->where('id',$decrypted['id'])->update(['sc_no' =>$decrypted['sc_no'],'ordr_no' => $decrypted['ordr_no'],'finance_no' => $decrypted['finance_no'],'payment_proc' => $decrypted['payment_proc']]);

              return response()->json(['status'=>1,
                'message' =>'success',
                'result' => 'Updated'],
                config('global.success_status'));
            }
            else{
                   return response()->json(['status'=>1,
                'message' =>'Not Updated',
                'result' => 'Sales Contract Number already exists.'],
                config('global.success_status'));

            }
          }else{

                $res = DB::table('sc_excel_datas')
                 ->where('id',$decrypted['id'])->update(['sc_no' =>$decrypted['sc_no'],'ordr_no' => $decrypted['ordr_no'],'finance_no' => $decrypted['finance_no'],'payment_proc' => $decrypted['payment_proc']]);

              return response()->json(['status'=>1,
                'message' =>'success',
                'result' => 'Updated'],
                config('global.success_status'));

          }


        }catch(\Exception $e){

         return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
       }

         
      }
      // --------------------------------------------------------------------
}
