<?php

namespace App\Http\Controllers\Api\Modules\Sap\SalesOrder;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class ScViewController extends Controller
{
      public function viewsc($id)
      {

          try{   

            $arr = array();
            
              $res = DB::table('sc_excel_datas')->where('sc_excel_datas.id',$id)->first();

               $sales_ct = DB::table('sap_contract_type')->where('contract_type_code',$res->ContractType)->first();
              $sales_org = DB::table('sap_sales_organization')->where('sales_orgerms_code',$res->SalesOrganization)->first();
              $sales_dischnl = DB::table('sap_distribution_channel')->where('distr_chan_code',$res->DistributionChannel)->first();
              $sales_div = DB::table('sap_division')->where('division_code',$res->Division)->first();
              $sales_ofc = DB::table('sap_sales_office')->where('sales_office_code',$res->Salesoffice)->first();
              $sales_grp = DB::table('sap_sales_group')->where('sales_group_code',$res->Salesgroup)->first();
              $sales_inc = DB::table('sap_incoterms')->where('incoterms_code',$res->Incoterms)->first();
              $sales_patterm = DB::table('sap_payment_terms')->where('payment_terms_code',$res->Paymentterms)->first();
              $sales_deli = DB::table('sap_delivery_mode')->where('delivery_mode_code',$res->Shp_Cond)->first();

              $sales_freight = DB::table('sap_freight')->where('freight_code',$res->Freight)->first();
            $sales_cus_grp = DB::table('sap_customer_group')->where('cus_group_code',$res->CustomerGroup4)->first();
             $sales_freigthind = DB::table('sap_freight_indication')->where('freight_indication_code',$res->FreightIndicator)->first();

             $payment_pro = DB::table('sap_payment_gurantee_proce')->where('pay_gurantee_code',$res->payment_proc)->first();
             // dd($payment_pro->pay_gurantee_dec);

             $freigt_part = DB::table('sap_frieght_partner')->where('fr_part_code',$res->frieght_partner)->first();

             $plant = DB::table('plants')->where('code',$res->Plant)->first();
               
                  // dd($res);
               if(!empty($res))
               {
                   $arr['ContractType'] = $res->ContractType.'-'.$sales_ct->contract_type_dec;
                   $arr['SalesOrganization'] = $res->SalesOrganization.'-'.$sales_org->sales_orgerms_dec;
                   $arr['DistributionChannel'] = $res->DistributionChannel.'-'.$sales_dischnl->distr_chan_terms_dec;
                   $arr['Division'] = $res->Division.'-'.$sales_div->division_dec;
                   $arr['ContractValidFrom'] = date("d-m-Y", strtotime($res->ContractValidFrom));
                   $arr['ContractValidTo'] = date("d-m-Y", strtotime($res->ContractValidTo));
                   $arr['Salesoffice'] = $res->Salesoffice.'-'.$sales_ofc->sales_office_dec;
                   $arr['Salesgroup'] = $res->Salesgroup.'-'.$sales_grp->sales_group_dec;
                   $arr['Incoterms'] = $res->Incoterms.'-'.$sales_inc->incoterms_dec;
                   $arr['Paymentterms'] = $res->Paymentterms.'-'.$sales_patterm->payment_terms_dec;
                   $arr['QtyContractTSML'] = $res->QtyContractTSML;
                   $arr['Sold_To_Party'] = $res->Sold_To_Party;
                   $arr['Ship_To_Party'] = $res->Ship_To_Party;
                   $arr['Cust_Referance'] = $res->Cust_Referance;
                   $arr['NetValue'] = $res->NetValue;
                   $arr['Cust_Ref_Date'] = $res->Cust_Ref_Date;
                   $arr['Shp_Cond'] = $res->Shp_Cond.'-'.$sales_deli->delivery_mode_dec;
                   $arr['item'] = $res->item;
                   $arr['Material'] = $res->Material;
                   $arr['Quantity'] = $res->Quantity;
                   $arr['CustomarMaterialNumber'] = $res->CustomarMaterialNumber;
                   $arr['OrderQuantity'] = $res->OrderQuantity;
                   $arr['Plant'] = "(".$res->Plant.")"." ".$plant->name;
                   $arr['ItemNumber'] = $res->ItemNumber;
                   $arr['CnTy'] = $res->CnTy;

                   $arr['Amount'] = $res->Amount;
                   $arr['Freight'] = $res->Freight.'-'.$sales_freight->freight_dec;
                   $arr['CustomerGroup4'] = $res->CustomerGroup4.'-'.$sales_cus_grp->cus_group_dec;
                   $arr['FreightIndicator'] = $res->FreightIndicator.'-'.$sales_freigthind->freight_indication_dec;
                   $arr['date'] = $res->date;
                   $arr['sc_no'] = $res->sc_no;
                   $arr['ordr_no'] = $res->ordr_no;
                   $arr['finance_no'] = (!empty($res->finance_no)) ? $res->finance_no: '';
                   $arr['payment_proc'] = (!empty($res->payment_proc)) ? $payment_pro->pay_gurantee_dec : '';
                   $arr['special_frg'] = $res->SpecialFrieght;
                   $arr['frieght_partner'] = (!empty($res->frieght_partner)) ? $res->frieght_partner.' - '.$freigt_part->frt_part_name : '';

               }
         
              return response()->json(['status'=>1,
                'message' =>'success',
                'result' => $arr],
                config('global.success_status'));


        }catch(\Exception $e){

         return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
       }

         
      }

      public function getaddrcode($id)
      {

          try{   

            
              $address = DB::table('address')->where('cus_code',$id)->first();
              
              // echo "<pre>";print_r($address);exit();
              if(!empty($address))
              {
                 $addr = $address;
              }
              else{

                  $addr = [];
              }
              return response()->json(['status'=>1,
                'message' =>'success',
                'result' => $addr],
                config('global.success_status'));


        }catch(\Exception $e){

         return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
       }

         
      }
}
