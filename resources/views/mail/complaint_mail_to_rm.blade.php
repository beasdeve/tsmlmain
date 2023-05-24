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
                        <td>
                            <img src="https://beas.in/tsml/assets/images/logo-white.png" style="max-width: 188px;">
                        </td>
                        <td>
                            <img src="https://beas.in/tsml/assets/images/secondary-white.png" style="max-width: 50px; float: right;">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="padding: 0 15px;">
                <p style="font-weight: 400; font-size: 15px; color: rgba(0,0,0,.9);">Dear Madam/Sir,</p>
                
            </td>
        </tr>
        <tr>
            <td style="padding: 0 15px;">
                <p style="font-weight: 400; font-size: 15px; line-height: 1.8; color: rgba(0,0,0,.8);">Cam send a complaint details for this customer <b>{{@$data['customer_name']}}</b> which complaint category is <b>{{@$data['com_cate_name']}}</b> and complaint sub category is <b>{{@$data['com_sub_cate_name']}}</b>, against the PO number ({{@$data['po_number']}}). Please find the below communication. </p>
                
              
            </td>
        </tr>
        <tr>
            <td style="padding: 0 15px; background: #f1e8e8;">
                <table style="width: 100%;">
                    @foreach($data['remarksData'] as $reshow)
                        @if($reshow->customer_remarks)
                        <tr>
                            <td style="padding: 0 15px;">
                                <div style=" margin: 4px 0; max-width: 40%; background: #dbe7fb; display: block; padding: 14px;"><b style="width: 100%; display: block;">Customer's Remarks! </b>{{$reshow['customer_remarks']}}
                                    <span style="display: block; width: 100%; text-align: right;">{{date('d-m-Y, H:i:s' , strtotime($reshow['created_at']))}}</span>
                                </div>
                            </td>
                        </tr>
                        @endif
                        @if($reshow->kam_remarks)
                        <tr>
                            <td style="padding: 0 15px;">
                                <div style=" margin: 5px 0; max-width: 40%; background: #dbe7fb; float:right; display: block; padding: 14px;"><b style="width: 100%; display: block;">Cam's Remarks! </b>  {{$reshow['kam_remarks']}}
                                <span style="display: block; width: 100%; text-align: right;">{{date('d-m-Y, H:i:s' , strtotime($reshow['created_at']))}}</span>
                            </div>
                            </td>
                        </tr>
                        @endif
                    
                    @endforeach
                </table>
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
                <p style="font-weight: 400; font-size: 15px; color: #fff; background: #09172F; text-align: center; padding: 10px 0; margin: 0;">© <?php echo date("Y"); ?> Tata Steel Mining Limited. All Rights Reserved.</p>
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