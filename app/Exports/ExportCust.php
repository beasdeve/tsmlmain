<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ExportCust implements FromCollection, WithHeadings
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
        	'Customer Code',
        	'Phone',
            'Customer Name',
            'Address 1', 
            'Address 2',
            'City',  
            'State',
            'Pincode',
            'Address Type'
                        
        ];
    }
}
