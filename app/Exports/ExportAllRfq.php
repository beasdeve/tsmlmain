<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ExportAllRfq implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
     protected $getThresholdData;
    function __construct($getThresholdData) 
	{
		// dd($getThresholdData);
	    $this->getThresholdData = $getThresholdData;
	}
    public function collection()
    {
        return collect($this->getThresholdData);
    }

    public function headings(): array
    {
        return [
        	'Customer Name',
            'RFQ. No.',
            'RFQ Date',
            'Quantity',  
            'Date',
            'Status',
            'Pending(days)',
            'Pending With',
            'PO No.',
            'PO Date'
          
        ];
    }
}
