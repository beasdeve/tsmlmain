<?php

namespace App\Http\Controllers\Api\Modules\Stub;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class StubbingController extends Controller
{
   public function gstDetailsDummy(Request $request)
    {
        //   $result['stjCd'] = "MHCG0674";
        //   $result['lgnm'] = "REYNOLDS PENS INDIA PRIVATE LIMITED";
        //   $result['stj'] = "SAKINAKA_703";
        //   $result['dty'] = "Input Service Distributor (ISD)";
        //   $result['adadr'] = [];
        //   $result['cxdt'] = "MHCG0674";
        //   $result['gstin'] = "27AABCR4412R1Z1";
        //   $result['nba'] = [
        //                      "Recipient of Goods or Services"
        //                   ];
        //   $result['lstupdt'] = "07/09/2019";
        //   $result['rgdt'] = "07/09/2019";
        //   $result['ctb'] = "Private Limited Company";
        //   $result['pradr'] = $this->demo_json();
        //   $result['tradeNam'] = "REYNOLDS PENS INDIA PRIVATE LIMITED";
        //   $result['sts'] = "Active";
        //   $result['ctjCd'] = "VM0804";
        //   $result['ctj'] = "VM0804";



        //   return response()->json(['status'=>1,
        //   'message' =>'success',
        //   'result' => $result],
        //   config('global.success_status'));

          $url ="http://172.16.2.102:6082/getGstDetails";
       // echo $url;
       $gst_details = array();
      $gstin=$request->gstId;
       $ch = curl_init();
       curl_setopt($ch, CURLOPT_URL, $url);
       curl_setopt($ch, CURLOPT_HEADER, 0);
       curl_setopt($ch, CURLOPT_POST, true);
       curl_setopt($ch, CURLOPT_POSTFIELDS, $gstin);
       curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
       curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: text/plain'));
       $head = curl_exec($ch);

       print_r("asdf",$head);
       $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
       curl_close($ch);
       $sa = str_split($head);

       $cnt = 0;
       $cntd = '';
       $cntda = array();
       foreach ($sa as $k => $v) {
           if ($v == '{') {
               $cnt++;
           }

           if (!empty($cnt)) {
               $cntd .= $v;
           }

           if ($v == '}') {
               $cnt--;
           }

           if (empty($cnt) && !empty($cntd)) {
               $cntda[] = $cntd;
               $cntd = '';
           }
       }
       
       if(isset($cntda[0]) && !empty($cntda[0]))
       {
            $gst_details = json_decode($cntda[0], true);
            
           
       }
       
       if(!empty($gst_details['data']))
       {
           return $gst_details['data'];
       }
       else
       {
           return false;
       }





    }

    public function demo_json(){


        $data['addr']['bnm'] = "Universal Business Park";
        $data['addr']['st']  = "Chandvli Farm road, off saki viha road";
        $data['addr']['loc']  = "Sakinaka. Andheri east";
        $data['addr']['bno']  = "204 - B wing";
        $data['addr']['dst']  = "Mumbai Suburban";
        $data['addr']['stcd'] = "Maharashtra";
        $data['addr']['city'] = "";
        $data['addr']['flno']  = "2nd floor";
        $data['addr']['lt']  ="";
        $data['addr']['pncd'] = "400072";
        $data['addr']['lg'] = "";
        $data['ntr'] = "Recipient of Goods or Services";

        return $data;
    }



       public function gstDetailsDummyNew()
        {
              $result['stjCd'] = "MHCG0674";
              $result['lgnm'] = "REYNOLDS PENS INDIA PRIVATE LIMITED";
              $result['stj'] = "SAKINAKA_703";
              $result['dty'] = "Input Service Distributor (ISD)";
              $result['adadr'] = [];
              $result['cxdt'] = "MHCG0674";
              $result['gstin'] = "27AABCR4412R1Z1";
              $result['nba'] = [
                                 "Recipient of Goods or Services"
                              ];
              $result['lstupdt'] = "07/09/2019";
              $result['rgdt'] = "07/09/2019";
              $result['ctb'] = "Private Limited Company";
              $result['pradr'] = $this->demo_json();
              $result['tradeNam'] = "REYNOLDS PENS INDIA PRIVATE LIMITED";
              $result['sts'] = "Active";
              $result['ctjCd'] = "VM0804";
              $result['ctj'] = "VM0804";

              
              $data['error'] = false;
              $data['data'] = $result;

              return response()->json(
              $data
             );



        }


    public function sapSalesContarct(Request $request)
    {


        $curl = curl_init();

        curl_setopt_array($curl, array(
          CURLOPT_URL => 'https://esalesqa.tatasteelmining.com:50001/RESTAdapter/SalesContract',
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => '',
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 0,
          CURLOPT_FOLLOWLOCATION => true,
          CURLOPT_SSL_VERIFYPEER => 0,
          CURLOPT_SSL_VERIFYHOST => 0,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => 'POST',
          CURLOPT_POSTFIELDS =>'{
                  "OrganizationalData": {
                    "ContractType": "ZFQC",
                    "SalesOrganization": "5500",
                    "DistributionChannel": "50",
                    "Division": "51",
                    "ContractValidFrom": "20230217",
                    "ContractValidTo": "20230222",
                    "Salesoffice": "1000",
                    "Salesgroup": "100",
                    "Incoterms": "DAP",
                    "Paymentterms": "ZX45"
                  },
                  "SoldToParty": {
                    "QtyContractTSML": 100,
                    "Sold_To_Party": "50000039",
                    "Ship_To_Party": "50000039",
                    "Cust_Referance": "CUST3366",
                    "NetValue": 107269.29,
                    "Cust_Ref_Date": "20230903"
                  },
                  "Sales": {
                    "Shp_Cond": "2",
                    "BusinessArea": ""
                  },
                  "Items":
                    {
                      "Item": 10,
                      "Material": "120000167",
                      "Quantity": 100,
                      "CustomarMaterialNumber": "120000167",
                      "OrderQuantity": "100",
                      "Plant": "1100",
                      "OverallStatus": "",
                      "StorageLocation": ""
                    },
                  "Conditions": 
                    {
                      "ItemNumber": 10,
                      "CnTy": "ZPR0",
                      "Amount": "100000",
                      "Description": "",
                      "Crcy": "",
                      "Per": "",
                      "Uom": "",
                      "ConditionValue_K": "",
                      "Curr": "",
                      "NumCCo": "",
                      "OUN": "",
                      "CConDe": "",
                      "Un": "",
                      "ConditionValue": ""
                    },
                    "Billing": {
                    "BilingBlock": "",
                    "InvoicingDates": "",
                    "BillingDate": "",
                    "ServRenderedDate": "",
                    "TaxDepartCountry": ""
                  },
                  "RiskManagement": {
                    "PaymtGuarantProc": "",
                    "FinancialDocNo": ""
                  },
                  "AdditionalDataA": {
                    "Freight": "N",
                    "CustomerGroup4": "DOM"
                  },
                  "AdditionalDataforPricing": {
                    "FreightIndicator": "P",
                    "FreightPartner": "17003"
                  }
                }'
          // CURLOPT_POSTFIELDS =>json_encode($request->scData)
          ,
          CURLOPT_HTTPHEADER => array(
            'Authorization: Basic TUpVTkNUSU9OX01fUElfUUE6V2VsY29tZUAxMjM=',
            'Content-Type: application/json'
          ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        echo $response;


            //  curl_setopt($curl, CURLOPT_VERBOSE, true);
            // $streamVerboseHandle = fopen('php://temp', 'w+');
            // curl_setopt($curl, CURLOPT_STDERR, $streamVerboseHandle);

            //            $result = curl_exec($curl);if ($result === FALSE) {
            //             printf("cUrl error (#%d): %s<br>\n",
            //                    curl_errno($curl),
            //                    htmlspecialchars(curl_error($curl)))
            //                    ;
            //         }rewind($streamVerboseHandle);$verboseLog = stream_get_contents($streamVerboseHandle);
            //         echo "cUrl verbose information:\n", 
            //              "<pre>", htmlspecialchars($verboseLog), "</pre>\n";
            //              curl_close($curl);

      }

    public function sapSalesOrder(Request $request)
    {


        $curl = curl_init();

        curl_setopt_array($curl, array(
          CURLOPT_URL => 'https://esalesqa.tatasteelmining.com:50001/RESTAdapter/SalesOrder',
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => '',
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 0,
          CURLOPT_FOLLOWLOCATION => true,
          CURLOPT_SSL_VERIFYPEER => 0,
          CURLOPT_SSL_VERIFYHOST => 0,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => 'POST',
          // CURLOPT_POSTFIELDS =>'{
          //                   "OrganizationalData": {
          //                     "OrderType": "ZFQS",
          //                     "SalesOrganization": 5500,
          //                     "DistributionChannel": 50,
          //                     "Division": 81,
          //                     "Salesoffice": 1000,
          //                     "Salesgroup": 100
          //                   },
          //                   "Contract": {
          //                     "ContractNumber": "0040001854"
          //                   }
                            
          //                 }'
          CURLOPT_POSTFIELDS =>json_encode($request->all())
          ,
          CURLOPT_HTTPHEADER => array(
            'Authorization: Basic TUpVTkNUSU9OX01fUElfUUE6V2VsY29tZUAxMjM=',
            'Content-Type: application/json'
          ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        echo $response;


            //  curl_setopt($curl, CURLOPT_VERBOSE, true);
            // $streamVerboseHandle = fopen('php://temp', 'w+');
            // curl_setopt($curl, CURLOPT_STDERR, $streamVerboseHandle);

            //            $result = curl_exec($curl);if ($result === FALSE) {
            //             printf("cUrl error (#%d): %s<br>\n",
            //                    curl_errno($curl),
            //                    htmlspecialchars(curl_error($curl)))
            //                    ;
            //         }rewind($streamVerboseHandle);$verboseLog = stream_get_contents($streamVerboseHandle);
            //         echo "cUrl verbose information:\n", 
            //              "<pre>", htmlspecialchars($verboseLog), "</pre>\n";
            //              curl_close($curl);

      }


    public function sapCusLedger(Request $request)
    {

        // dd(json_encode($request->sapLedgerRequest));
        $curl = curl_init();

        curl_setopt_array($curl, array(
          CURLOPT_URL => 'https://esalesqa.tatasteelmining.com:50001/RESTAdapter/CustomerLedgerBalance',
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => '',
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 0,
          CURLOPT_FOLLOWLOCATION => true,
          CURLOPT_SSL_VERIFYPEER => 0,
          CURLOPT_SSL_VERIFYHOST => 0,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => 'POST',
          CURLOPT_POSTFIELDS =>'{"CustomerLedgerBalance":{"CustomerNumber":"00500000951","FromDate":"20230511","ToDate":"20230517"}}'
          // CURLOPT_POSTFIELDS =>json_encode($request->sapLedgerRequest)
          ,
          CURLOPT_HTTPHEADER => array(
            'Authorization: Basic TUpVTkNUSU9OX01fUElfUUE6V2VsY29tZUAxMjM=',
            'Content-Type: application/json'
          ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        echo $response;


            //  curl_setopt($curl, CURLOPT_VERBOSE, true);
            // $streamVerboseHandle = fopen('php://temp', 'w+');
            // curl_setopt($curl, CURLOPT_STDERR, $streamVerboseHandle);

            //            $result = curl_exec($curl);if ($result === FALSE) {
            //             printf("cUrl error (#%d): %s<br>\n",
            //                    curl_errno($curl),
            //                    htmlspecialchars(curl_error($curl)))
            //                    ;
            //         }rewind($streamVerboseHandle);$verboseLog = stream_get_contents($streamVerboseHandle);
            //         echo "cUrl verbose information:\n", 
            //              "<pre>", htmlspecialchars($verboseLog), "</pre>\n";
            //              curl_close($curl);

      }
}
