<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ExportRfq implements FromCollection, WithHeadings
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
        // dd($this->getThresholdData);
        return collect($this->getThresholdData);
    }

        public function headings(): array
    {
        return [
        	'Customer code',
        	'User',
            'RFQ. No.',
            'Sub Category',
            'Size',
            'Quantity', 
            'Expected Price', 
            'Tsml Price',
            'Bill To',
            'Ship To',
            'To Date',
            'From Date',
            'Valid Till'          
        ];
    }
}
