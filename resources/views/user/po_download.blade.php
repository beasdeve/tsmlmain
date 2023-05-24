<!DOCTYPE html>
<html>
    <head>
        <title>Payment Report</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body> 
    	<div class="paydata">
    		<table class="" style="width:100%; margin-top: 0px;">
                <thead>
                    <tr>
                    	<th style="text-align: left;"><p style="text-align: left;">PO Number: {{$data['po_no']}}</p></th>
                    	<th style="text-align: right;"><p style="text-align: right;">PO date: {{$data['po_date']}}</p></th>
                    </tr>
                </thead>
            </table>
            <p><b>Customer Name: {{$data['user_name']}}</b></p>
    	</div>
    	@foreach($result as $show)
	        <div class="paydata">
	        	<div style="padding-top: 25px;">
	            <table class="" style="width:100%; margin-top: 0px;">
	                <thead>
	                    <tr>
	                        <th style="text-align: left; vertical-align: middle; width: 10%;">
	                            <img src="{{@$show['primary_image_url']}}" style="width: 100px; border-radius: 0.25rem;">
	                        </th>
	                        <th style="text-align: left; vertical-align: middle; width: 90%;">
	                        	<div style="padding-left: 15px;">
	                            <h3
	                                style="font-size: 16px; font-weight: 500; font-family: 'Roboto', sans-serif; color: #000; margin: 0;">
	                               {{@$show['cat_name']}}
	                            </h3>
	                            <p
	                                style="font-size: 14px; margin: 0; color: #404040; font-family: 'Roboto', sans-serif; font-weight: normal;">{{@$show['cat_dese']}}</p>
	                           <!--  <p
	                                style="font-size: 14px; margin: 0; color: #404040; font-family: 'Roboto', sans-serif; font-weight: normal;">
	                                <strong>Chemical Composition: </strong> 
	                                Cr - {{@$show['Cr']}}, 
	                                C - {{@$show['C']}}, 
	                                Phos - {{@$show['Phos']}}, 
	                                S -{{@$show['S']}}, 
	                                Si - {{@$show['Si']}}
	                            </p> -->
	                            </div>
	                        </th>
	                    </tr>
	                </thead>
	            </table>
	            </div>
	             
	            @foreach($show['schedule'] as $showshed)
		            <table class="" style="width:100%; margin-top: 0px; font-size: 12px">
		                <tbody>
		                    <tr>
		                        <td colspan="6">
		                            <hr>
		                        </td>
		                    </tr>
		                    <tr>
		                    	<td colspan="3">
		                            <label style="font-size: 14px; white-space: nowrap;">Sub-Category Name</label>
		                            <input style="width: 100%;" type="text" name="" value="{{$showshed['sub_cat_name']}}">
		                        </td>
		                        <td>
		                            <label style="font-size: 14px; white-space: nowrap;">Sizes Offered</label>
		                            <input style="width: 100%;" type="text" name="" value="{{$showshed['pro_size']}}">
		                        </td>
		                        <td>
		                            <label style="font-size: 14px; white-space: nowrap;">Quantity</label>
		                            <input style="width: 100%;" type="text" name="" value="{{$showshed['quantity']}}">
		                        </td>
		                        <td>
		                            <label style="font-size: 14px; white-space: nowrap;">Expected Ex-Works Price</label>
		                            <input style="width: 100%;" type="text" name="" value="{{$showshed['expected_price']}}">
		                        </td>
		                    </tr>
		                    <tr>
		                        <td>
		                            <label style="font-size: 14px; white-space: nowrap;">Pickup From</label>
		                            <input style="width: 100%;" type="text" name="" value="{{$showshed['plant'] ? $showshed['plant'] :'Na'}}">
		                        </td>
		                        <td colspan="2">
		                            <label style="font-size: 14px; white-space: nowrap;">Location</label>
		                            <input style="width: 100%;" type="text" name="" value="{{$showshed['location'] ? $showshed['location'] :'Na'}}">
		                        </td>
		                        <td>
		                            <label style="font-size: 14px; white-space: nowrap;">CAM's Price</label>
		                            <input style="width: 100%;" type="text" name="" value="{{$showshed['kam_price']}}">
		                        </td>
		                        <td>
		                            <label style="font-size: 14px; white-space: nowrap;">Valid Till</label>
		                            <input style="width: 100%;" type="text" name="" value="{{date('d-m-Y', strtotime($showshed['valid_till']))}}">
		                        </td>
		                        <td>
		                            <label style="font-size: 14px; white-space: nowrap;">Delivery Method</label>
		                            <input style="width: 100%;" type="text" name="" value="{{$showshed['delivery']}}">
		                        </td>
		                    </tr>
		                    <tr>
		                        <td colspan="6">		                        	
		                            <label style="font-size: 14px; white-space: nowrap; width: 100%; float: left;">Delivery Between</label>
		                            <div style="clear: both;"></div>
		                            <!-- @foreach($showshed['delivery_betweene'] as $showshetd)
		                        		<p>Quantity : {{$showshetd['qty']}}</p>
		                        		<p>Date : {{date('d-m-Y', strtotime($showshed['to_date']))}}</p>
		                        	@endforeach -->
		                            <!-- <input style="width: 50%; float: left;" type="text" name="" value="{{date('d-m-Y', strtotime($showshed['to_date']))}} ">
		                            <input style="width: 50%; float: right;" type="text" name="" value="{{date('d-m-Y', strtotime($showshed['from_date']))}}"> -->
		                            <div style="clear: both;"></div>
		                            <table style="width:100%; margin-top: 0px; font-size: 14px;" border="1">
		                            	<tr>
		                            		<th style="text-align: left; padding: 5px;">Quantity</th>
		                            		<th style="text-align: left; padding: 5px;">Date</th>
		                            	</tr>
		                            	@foreach($showshed['delivery_betweene'] as $showshetd)
		                            	<tr>
		                            		
		                            		<td style="text-align: left; padding: 5px;">{{$showshetd['qty']}}</td>
		                            		<td style="text-align: left; padding: 5px;">{{date('d-m-Y', strtotime($showshetd['to_date']))}}</td>
		                            	</tr>
		                            		@endforeach
		                            </table>
		                        </td>
		                    </tr>
		                    <tr>
		                        <td colspan="6">
		                            <label style="font-size: 14px; white-space: nowrap;">Bill To</label>
		                            <input style="width: 100%;" type="text" name="" value="{{$data['bill_to']}}">
		                        </td>
		                    </tr>
		                    <tr>
		                        <td colspan="6">
		                            <label style="font-size: 14px; white-space: nowrap;">Ship To</label>
		                            <input style="width: 100%;" type="text" name="" value="{{$data['ship_to']}}">
		                        </td>
		                    </tr>
		                    <tr>
		                        <td colspan="6">
		                            <label style="font-size: 14px; white-space: nowrap;">Customer Remarks</label>
		                            <div style="border: 1.5px solid #ccc; padding: 4px;">{{$showshed['remarks']}}
		                            </div>
		                        </td>
		                    </tr>
		                    @if($showshed['kamsRemarks'])
		                    <tr>
		                        <td colspan="6">
		                            <label style="font-size: 14px; white-space: nowrap;">CAM Remarks</label>
		                            <div style="border: 1.5px solid #ccc; padding: 4px;">{{$showshed['kamsRemarks']}}
									</div>
		                        </td>
		                    </tr>
		                    @endif
		                </tbody> 
		            </table> 
	            @endforeach 
	        </div> 
        @endforeach

    </body>
</html>