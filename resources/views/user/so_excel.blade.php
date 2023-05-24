<!DOCTYPE html>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<table>
    <thead>
    <tr>
        <th>order_type</th>
        <th>sales_organization</th>
        <th>distribution_channel</th>
        <th>division</th>
        <th>sales_office</th>
        <th>sales_group</th>
        <th>contract_number</th>
    </tr>
    </thead>
    <tbody>
   @foreach ($soData as $show)
        <tr>
           <td >{{ @$show->order_type }}</td>
           <td >{{ @$show->sales_organization }}</td>
           <td >{{ @$show->distribution_channel }}</td>
           <td >{{ @$show->division }}</td>
           <td >{{ @$show->sales_office }}</td>
           <td >{{ @$show->sales_group }}</td>
           <td >{{ @$show->contract_number }}</td>
        </tr>
    @endforeach
    </tbody>
   </table>
 </body>