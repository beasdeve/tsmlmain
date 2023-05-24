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
        <th style="padding: 6px 8px; border: 1px solid #ccc;">date</th>
        </tr>
    </thead>

    <tbody>
        @foreach ($data as $show)
     
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