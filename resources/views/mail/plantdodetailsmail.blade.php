<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>
<body style="background-color: #f1f1f1; padding: 0; margin: 0; font-family: 'Roboto', sans-serif;">

<div style="width: 600px; margin: 0 auto; background: #fff; padding: 0;">
    <table style="width: 100%;">
        <tr>
            <td style="background: #3D7EEB;">
                <table style="width: 100%;">
                    <tr>
                        <td style="vertical-align: top;">
                            <div style="padding-top:22px;">
                                <img src="https://beas.in/tsml/assets/images/logo-white.png" style="max-width: 188px;">
                            </div>
                        </td>
                        <td style="vertical-align: top;">
                            <div>
                                <img src="https://beas.in/tsml/assets/images/secondary-white.png" style="max-width: 50px; float: right;">
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="padding: 0 15px;">
                <p style="font-weight: 400; font-size: 15px; color: rgba(0,0,0,.9);">Dear Madam/Sir,</p>
                <p style="font-weight: 400; font-size: 15px; color: rgba(0,0,0,.9);">Greetings from tatasteelmining</p>
            </td>
        </tr>
        <tr>
            <td style="padding: 0 15px;">
               <div style="overflow: hidden;
    position: relative;
    width: 565px;">
               <div style="overflow-x: auto; ">
                   <table cellpadding="1" cellspacing="1" style="width: 100%; border: 1px solid #ccc;
  border-collapse: collapse;">
    <thead>
        <tr style="background: #ddd; font-size: 12px; color: #555; white-space: nowrap;">
        <th style="padding: 6px 8px; border: 1px solid #ccc;">Id</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">Contract Type</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">SalesOrganization</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">Division</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">DistributionChannel</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">ContractValidFrom</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">ContractValidTo</th>

        <th style="padding: 6px 8px; border: 1px solid #ccc;">Salesoffice</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">Salesgroup</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">Incoterms</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">Paymentterms</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">QtyContractTSML</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">Sold_To_Party</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">Ship_To_Party</th>

        <th style="padding: 6px 8px; border: 1px solid #ccc;">Cust Referance</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">NetValue</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">Cust_Ref_Date</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">Shp_Cond</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">item</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">Material</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">Quantity</th>


        <th style="padding: 6px 8px; border: 1px solid #ccc;">CustomarMaterialNumber</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">OrderQuantity</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">Plant</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">ItemNumber</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">CnTy</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">Amount</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">Freight</th>

        <th style="padding: 6px 8px; border: 1px solid #ccc;">CustomerGroup4</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">FreightIndicator</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">Special Frieght</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">Freight Partner</th>

        <th style="padding: 6px 8px; border: 1px solid #ccc;">SO. No.</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">Finance Doc. No.</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">Payment Proc.</th>
        <th style="padding: 6px 8px; border: 1px solid #ccc;">date</th>
        </tr>
    </thead>

    <tbody>
        @foreach ($data['excel'] as $show)
     
        <tr style="background: #fff; font-size: 11px; color: #555; white-space: nowrap;">
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->id }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->ContractType }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->SalesOrganization }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->Division }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->DistributionChannel }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->ContractValidFrom }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->ContractValidTo }}</td>

            <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->Salesoffice }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->Salesgroup }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->Incoterms }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->Paymentterms }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->QtyContractTSML }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->Sold_To_Party }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->Ship_To_Party }}</td>

            <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->Cust_Referance }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->NetValue }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->Cust_Ref_Date }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->Shp_Cond }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->item }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->Material }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->Quantity }}</td>

            <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->CustomarMaterialNumber }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->OrderQuantity }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->Plant }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->ItemNumber }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->CnTy }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->Amount }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->Freight }}</td>

            <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->CustomerGroup4 }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->FreightIndicator }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->SpecialFrieght }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->frieght_partner }}</td>

           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->ordr_no }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->finance_no }}</td>
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->payment_proc }}</td>
           
           <td style="padding: 6px 8px; border: 1px solid #ccc;">{{ @$show->date }}</td>

        </tr>

        @endforeach
    </tbody>
   </table>
               </div>
               </div>
            </td>
        </tr>
        <tr>
          <td style="padding: 0 15px;">
            <div style="border: 1px solid #ccc; padding: 7.5px;">
            <table>
              <tr >
                <td valign="top">
                  <p style="padding:0; margin:0; font-size: 12px;">CUSTOMER : {{@$data['cred'][0]['bill_to_name']}}</p>
                  <p style="padding:0; margin:0; font-size: 12px;">CONTACT PERSON :</p>
                  <p style="padding:0; margin:0; font-size: 12px;">CODE: {{@$data['cred'][0]['bill_to_code']}}</p>
                </td>
                <!-- <td valign="top">
                  <p style="padding:0; margin:0; font-size: 12px; padding-left: 30px;">TELEPHONE:</p>
                  <p style="padding:0; margin:0; font-size: 12px; padding-left: 30px;">FAX:</p>
                </td> -->
              </tr>
            </table>
            </div>
          </td>
        </tr>
        <tr>
                <td style="padding: 0 15px;" valign="top">
                  <table cellpadding="1" cellspacing="1" style="width: 100%; border: 1px solid #ccc;  border-collapse: collapse;">
                    <thead>
                      <tr style="background: #ddd; font-size: 10px; color: #555;">
                        <th style="padding: 6px 8px; border: 1px solid #ccc;">S.NO.</th>
                        <th style="padding: 6px 8px; border: 1px solid #ccc;">MATERIAL CODE CHARACTERISTICS</th>
                        <th style="padding: 6px 8px; border: 1px solid #ccc;">DESCRIPTION</th>
                        <th style="padding: 6px 8px; border: 1px solid #ccc;">QTY TO</th>
                        <th style="padding: 6px 8px; border: 1px solid #ccc;">PRICE INR/TO</th>
                        <th style="padding: 6px 8px; border: 1px solid #ccc;">CGST + SGST  INR/TO</th>
                        <th style="padding: 6px 8px; border: 1px solid #ccc;">IGST / UGST INR/TO</th>
                        <th style="padding: 6px 8px; border: 1px solid #ccc;">FREIGHT INR/TO</th>
                        <th style="padding: 6px 8px; border: 1px solid #ccc;">TOTAL INR/TO</th>
                    </tr>
                    </thead>
                    <tbody>
                      <tr style="background: #fff; font-size: 9px; color: #555;">
                        <td style="padding: 6px 8px; border: 1px solid #ccc;">1</td>
                        <td style="padding: 6px 8px; border: 1px solid #ccc;">{{@$data['excel'][0]->CustomarMaterialNumber}}</td>
                        <td style="padding: 6px 8px; border: 1px solid #ccc;">{{@$data['cred'][0]['sub_cat']}}</td>
                        <td style="padding: 6px 8px; border: 1px solid #ccc;">{{@$data['excel'][0]->QtyContractTSML}}</td>
                        <td style="padding: 6px 8px; border: 1px solid #ccc;">{{@$data['excel'][0]->NetValue}}</td>
                        <td style="padding: 6px 8px; border: 1px solid #ccc;">0.00</td>
                        <td style="padding: 6px 8px; border: 1px solid #ccc;">0.00</td>
                        <td style="padding: 6px 8px; border: 1px solid #ccc;">0.000</td>
                        <td style="padding: 6px 8px; border: 1px solid #ccc;">{{@$data['excel'][0]->NetValue}}</td>
                      </tr>
                    </tbody>                    
                  </table>
                </td>
              </tr>
              <tr>
                <td style="padding: 0 15px;" valign="top">
                  <div style="border: 1px solid #ccc; padding: 7.5px;">
                    <table>
                      <tr>
                        <td><p style="padding:0; margin:0; font-size: 12px;">CARBON_PERCENTAGE</p></td>
                        <td><p style="padding:0; margin:0; font-size: 12px;">{{@$data['cred'][0]['c'][0]}}%</p></td>
                        <td><p style="padding:0; margin:0; font-size: 12px;">{{@$data['cred'][0]['c'][1]}} %</p></td>
                      </tr>
                    </table>                  
                </div>
                </td>
              </tr>
              <tr>
                <td style="padding: 0 15px;" valign="top">
                  <div style="border: 1px solid #ccc; padding: 7.5px;">
                    <table>
                      <tr>
                        <td><p style="padding:0; margin:0; font-size: 12px;">CHROME_PERCENTAGE</p></td>
                        <td><p style="padding:0; margin:0; font-size: 12px;">{{@$data['cred'][0]['chrome'][0]}}%</p></td>
                        <td><p style="padding:0; margin:0; font-size: 12px;">{{@$data['cred'][0]['chrome'][1]}}%</p></td>
                      </tr>
                    </table>                  
                </div>
                </td>
              </tr>
              <tr>
                <td style="padding: 0 15px;" valign="top">
                  <div style="border: 1px solid #ccc; padding: 7.5px;">
                    <table>
                      <tr>
                        <td><p style="padding:0; margin:0; font-size: 12px;">MOISTURE</p></td>
                        <td><p style="padding:0; margin:0; font-size: 12px;">0.000</p></td>
                        <td><p style="padding:0; margin:0; font-size: 12px;">0.000 %</p></td>
                      </tr>
                    </table>                  
                </div>
                </td>
              </tr>
              <tr>
                <td style="padding: 0 15px;" valign="top">
                  <div style="border: 1px solid #ccc; padding: 7.5px;">
                    <table>
                      <tr>
                        <td><p style="padding:0; margin:0; font-size: 12px;">OVER_SIZE</p></td>
                        <td><p style="padding:0; margin:0; font-size: 12px;">0.000</p></td>
                        <td><p style="padding:0; margin:0; font-size: 12px;">0.000 %</p></td>
                      </tr>
                    </table>                  
                </div>
                </td>
              </tr>
              <tr>
                <td style="padding: 0 15px;" valign="top">
                  <div style="border: 1px solid #ccc; padding: 7.5px;">
                    <table>
                      <tr>
                        <td><p style="padding:0; margin:0; font-size: 12px;">PHOS_PERCENTAGE</p></td>
                        <td><p style="padding:0; margin:0; font-size: 12px;">{{@$data['cred'][0]['phos'][0]}}%</p></td>
                        <td><p style="padding:0; margin:0; font-size: 12px;">{{@$data['cred'][0]['phos'][1]}} %</p></td>
                      </tr>
                    </table>                  
                </div>
                </td>
              </tr>
              <tr>
                <td style="padding: 0 15px;" valign="top">
                  <div style="border: 1px solid #ccc; padding: 7.5px;">
                    <table>
                      <tr>
                        <td><p style="padding:0; margin:0; font-size: 12px;">SILICA_PERCENTAGE</p></td>
                        <td><p style="padding:0; margin:0; font-size: 12px;">{{@$data['cred'][0]['silica'][0]}}%</p></td>
                        <td><p style="padding:0; margin:0; font-size: 12px;">{{@$data['cred'][0]['silica'][1]}} %</p></td>
                      </tr>
                    </table>                  
                </div>
                </td>
              </tr>
              <tr>
                <td style="padding: 0 15px;" valign="top">
                  <div style="border: 1px solid #ccc; padding: 7.5px;">
                    <table>
                      <tr>
                        <td><p style="padding:0; margin:0; font-size: 12px;">SULPHUR_PERCENTAGE</p></td>
                        <td><p style="padding:0; margin:0; font-size: 12px;">{{@$data['cred'][0]['sulfur'][0]}}</p></td>
                        <td><p style="padding:0; margin:0; font-size: 12px;">{{@$data['cred'][0]['sulfur'][1]}} %</p></td>
                      </tr>
                    </table>                  
                </div>
                </td>
              </tr>
              <tr>
                <td style="padding: 0 15px;" valign="top">
                  <div style="border: 1px solid #ccc; padding: 7.5px;">
                    <table>
                      <tr>
                        <td><p style="padding:0; margin:0; font-size: 12px;">TDC</p></td>
                        <td><p style="padding:0; margin:0; font-size: 12px;">0.000</p></td>
                        <td><p style="padding:0; margin:0; font-size: 12px;">0.000 %</p></td>
                      </tr>
                    </table>                  
                </div>
                </td>
              </tr>
              <tr>
                <td style="padding: 0 15px;" valign="top">
                  <div style="border: 1px solid #ccc; padding: 7.5px;">
                    <table>
                      <tr>
                        <td><p style="padding:0; margin:0; font-size: 12px;">TI_PERCENTAGE</p></td>
                        <td><p style="padding:0; margin:0; font-size: 12px;">{{@$data['cred'][0]['ti'][0]}}%</p></td>
                        <td><p style="padding:0; margin:0; font-size: 12px;">{{@$data['cred'][0]['ti'][3]}} %</p></td>
                      </tr>
                    </table>                  
                </div>
                </td>
              </tr>
              <tr>
                <td style="padding: 0 15px;" valign="top">
                  <div style="border: 1px solid #ccc; padding: 7.5px;">
                    <table>
                      <tr>
                        <td><p style="padding:0; margin:0; font-size: 12px;">UNDER_SIZE</p></td>
                        <td><p style="padding:0; margin:0; font-size: 12px;">0.000</p></td>
                        <td><p style="padding:0; margin:0; font-size: 12px;">0.000 %</p></td>
                      </tr>
                    </table>                  
                </div>
                </td>
              </tr>

              <tr>
                <td style="padding: 0 15px;" valign="top">
                  <div style="border: 1px solid #ccc; padding: 7.5px;">
                  <p style="padding:0; margin:0; font-size: 12px;">TOTAL AMOUNT: {{@$data['excel'][0]->NetValue}} INR</p>
                </div>
                </td>
              </tr>
              <tr>
                <td style="padding: 0 15px;" valign="top">
                  <div style="border: 1px solid #ccc; padding: 7.5px;">
                  <p style="padding:0; margin:0; font-size: 12px;">PAYMENT TERMS : {{@$data['cred'][0]['paytems']}}</p>
                </div>
                </td>
              </tr>
              <tr>
                <td style="padding: 0 15px;">
                  <div style="border: 1px solid #ccc; padding: 7.5px;">
                  <table>
                    <td valign="top">
                      <p style="padding:0; margin:0; font-size: 12px;">TRANSPORTER NAME :</p>
                      <p style="padding:0; margin:0; font-size: 12px;">FREIGHT : {{@$data['cred'][0]['frieght']}}</p>
                    </td>
                    <td>
                      <p style="padding:0; margin:0; font-size: 12px; padding-left: 30px;">DELIVERY POINT : {{@$data['cred'][0]['sub_cat']}}</p>
                    </td valign="top">
                  </table>
                </div>
                </td>
              </tr>
              <tr>
                <td style="padding: 0 15px;">
                  <div style="border: 1px solid #ccc; padding: 7.5px;">
                  <table>
                    <td valign="top">
                      <p style="padding:0; margin:0; font-size: 12px;">SHIP TO : {{@$data['cred'][0]['bill_to_name']}}</p>
                      <p style="padding:0; margin:0; font-size: 12px;">CODE : {{@$data['cred'][0]['bill_to_code']}}</p>
                      <p style="padding:0; margin:0; font-size: 12px;">FREIGHT INDICATOR : {{@$data['cred'][0]['frght_indc']}}</p>
                    </td>
                    <td valign="top">
                      <p style="padding:0; margin:0; font-size: 12px; padding-left: 30px;">DESTINATION : {{@$data['cred'][0]['ship_add']}}</p>
                    </td>
                  </table>
                </div>
                </td>
              </tr>
        <tr>
            <td style="padding: 0 15px;">
                <p style="font-weight: 400; font-size: 15px; color: rgba(0,0,0,.9);">Thank You,</p>
                <p style="font-weight: 400; font-size: 15px; color: rgba(0,0,0,.9);">Team-tatasteelmining</p>
            </td>
        </tr>
        <tr>
            <td style="padding: 0; border-top: 2px solid #f1f1f1;">
                <p style="font-weight: 400; font-size: 15px; color: #fff; background: #09172F; text-align: center; padding: 10px 0; margin: 0;">© 2021 Tata Steel Mining Limited. All Rights Reserved.</p>
                <table style="width: 100%;">
                    <tr>
                        <td>
                            <p style="font-weight: 400; font-size: 15px; color: rgba(0,0,0,.9); text-align: right;">Powered by</p>
                        </td>
                        <td>
                            <img src="https://beas.in/tsml/assets/images/mjunction_logo.png">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>

</body>
</html>