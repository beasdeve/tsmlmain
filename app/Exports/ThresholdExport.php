<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use App\Models\SoTempExcel;

class ThresholdExport implements FromCollection, WithHeadings
{
	protected $getThresholdData;
	function __construct($getThresholdData) 
	{
		// dd($getThresholdData);
	    $this->getThresholdData = $getThresholdData;
	} 
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
    	// dd($this->getThresholdData);
        return $this->getThresholdData;
    }

    public function headings(): array
    {
        return [
            'Product',
            'Category', 
            'Sub Category',
            'Sizes Offered', 
            'Basic Price', 
            'Price Premium sing',
            'Price Premium',
            'Miscellaneous Cost',
            'Proposed Price Adjustment',
            'Interest Credit',
            'Plant Type'             
        ];
    }
}
