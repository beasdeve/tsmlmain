<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ExportMis implements FromCollection, WithHeadings
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
        	'PO No.',
        	'Cus. Reference No.',
            'Customer Name',
            'Rfq No.', 
            'Quantity',
            'Po Date',  
            'Plant',
            'Size'
                        
        ];
    }
}
