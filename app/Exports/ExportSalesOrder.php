<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ExportSalesOrder implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    protected $getThresholdData;
    function __construct($getThresholdData) 
	{  
		$arr = array();
		// dd($getThresholdData);
		foreach ($getThresholdData as $key => $value) {
			 
			 $arr[$key]['user'] = $value['user'];
			 $arr[$key]['rfq_no'] = $value['rfq_no'];
			 $arr[$key]['quantity'] = $value['quantity'];
			 $arr[$key]['po_date'] = $value['po_date'];
			 $arr[$key]['plant'] = $value['plant'];
			 $arr[$key]['size'] = $value['size'];
			 // $arr[$key]['user'] = $value->user;
			 $str = "";
     		if(!empty($value['tentative']))
			{
			 	foreach ($value['tentative'] as $k => $v) {
			 	  
			 	  // $sch[$k]['qty'] = $v['qty'];
			 	  // $sch[$k]['to_date'] = $v['to_date'];
			 		$str .= $v['to_date']."(".$v['qty'].") ,";

			 	}
			}

			 $arr[$key]['tentative'] = rtrim($str,',');
			 $arr[$key]['status'] = $value['status'];

		}
		// dd($arr);
	    $this->getThresholdData = $arr;
	}
    public function collection()
    {
        // dd($this->getThresholdData);
        return collect($this->getThresholdData);
    }

    public function headings(): array
    {
        return [
            'Customer Name',
            'Rfq No.', 
            'Quantity',
            'Date',  
            'Plant',
            'Size',
            'Tentative(MT)',
            'Status'
                        
        ];
    }
}
