<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>

<div style="font-family: 'Roboto', sans-serif; width: 100%;">
	<div style="font-weight: bold; font-size: 18px; width: 100%; text-align:center;border-bottom:1px solid #ccc; padding-bottom:15px; margin-bottom:15px;">
		Purchass Order
	</div>
	<div style="width: 100%;">
		<table style="width: 100%">
			<tr>
				<td>
					<table style="width: 100%;">
						<tr>
							<td>To</td>
						</tr>
						<tr>
							<td style="border: 1px solid black; border-collapse: collapse; padding: 5px;">Company Tata Steel Mining Ltd</td>
						</tr>
					</table>
				</td>
				<td colspan="2">
					<table style="width: 100%;">
						<tr>
							<td>Customer</td>
						</tr>
						<tr>
							<td style="border: 1px solid black; border-collapse: collapse; padding: 5px;">{{$data['user_name']}}</td>
						</tr>
					</table>
				</td>
			</tr>

			<tr>
				<td>
					<table style="width: 100%;">
						<tr>
							<td style="border: 1px solid black; border-collapse: collapse; padding: 5px;">Product : {{$data['product_name']}}</td>
						</tr>
					</table>
				</td>
				<td>
					<table style="width: 100%;">
						<tr>
							<td style="border: 1px solid black; border-collapse: collapse; padding: 5px;">PO : {{$data['po_no']}}</td>
						</tr>
					</table>
				</td>
				<td>
					<table style="width: 100%;">
						<tr>
							<td style="border: 1px solid black; border-collapse: collapse; padding: 5px;">PO Date : {{$data['po_date']}}</td>
						</tr>
					</table>
				</td>
			</tr>

			<tr>
				<td colspan="3">
					<table style="width: 100%; border-collapse: collapse;">
						<tr>
							<!-- <th style="border: 1px solid black; border-collapse: collapse; padding: 5px; border-collapse: collapse; text-align: left;">Product</th> -->
							<th style="border: 1px solid black; border-collapse: collapse; padding: 5px; border-collapse: collapse; text-align: left; ">Category</th>
							<th style="border: 1px solid black; border-collapse: collapse; padding: 5px; border-collapse: collapse; text-align: left; white-space: nowrap;">Size</th>
							<th style="border: 1px solid black; border-collapse: collapse; padding: 5px; border-collapse: collapse; text-align: left; white-space: nowrap;">Quantity(MT)</th>
							<th style="border: 1px solid black; border-collapse: collapse; padding: 5px; border-collapse: collapse; text-align: left;">Ship To</th>
							<th style="border: 1px solid black; border-collapse: collapse; padding: 5px; border-collapse: collapse; text-align: left; white-space: nowrap;">Shipping Date</th>
							<th style="border: 1px solid black; border-collapse: collapse; padding: 5px; border-collapse: collapse; text-align: left; white-space: nowrap;">Amount</th>
						</tr>
						 
						@foreach($result as $show)
						<tr>
							<!-- <td style="border: 1px solid black; border-collapse: collapse; padding: 5px; border-collapse: collapse;">{{@$show['product_name']}}</td> -->
							<td style="border: 1px solid black; border-collapse: collapse; padding: 5px; border-collapse: collapse;">{{@$show['cat_name']}}</td>
							<td style="border: 1px solid black; border-collapse: collapse; padding: 5px; border-collapse: collapse; white-space: nowrap;">{{@$show['pro_size']}}</td>
							<td style="border: 1px solid black; border-collapse: collapse; padding: 5px; border-collapse: collapse;">{{@$show['qty']}}</td>
							<td style="border: 1px solid black; border-collapse: collapse; padding: 5px; border-collapse: collapse;">{{@$show['ship_to']}}</td>
							<td style="border: 1px solid black; border-collapse: collapse; padding: 5px; border-collapse: collapse;">{{@$show['tentative_delivey_date']}}</td>
							<td align="right" style="border: 1px solid black; border-collapse: collapse; padding: 5px; border-collapse: collapse;">{{@$show['kam_price']}}</td>
						</tr>
						@endforeach
						<tr>
							<th colspan="5" align="right" style="border: 1px solid black; border-collapse: collapse; padding: 5px; border-collapse: collapse;">Total</th>
							<th align="right" style="border: 1px solid black; border-collapse: collapse; padding: 5px; border-collapse: collapse;">{{$data['total_price']}}</th>
						</tr>
					</table>
				</td>
			</tr>

			<tr>
				<td colspan="3" style="vertical-align: top;">
					<table style="width: 100%; border-collapse: collapse;">
						<tr>
							<td rowspan="2" align="left" style="border: 1px solid black; border-collapse: collapse; padding: 5px; border-collapse: collapse; width: 50%; vertical-align: top;">Special Instructions</td>
							<td align="left" style="border: 1px solid black; border-collapse: collapse; padding: 5px; border-collapse: collapse; width: 50%; vertical-align: top;">Approval Signature<div style="height: 30px;"></div></td>
						</tr>
						<tr>
							<td align="left" style="border: 1px solid black; border-collapse: collapse; padding: 5px; border-collapse: collapse; width: 50%; vertical-align: top;">Purchaser Signature<div style="height: 30px;"></div></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
</div>

</body>
</html>