<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ExportFreightCharges implements FromCollection, WithHeadings
{	
	protected $getFreightData;
	function __construct($getFreightData) 
	{
		// dd($getThresholdData);
	    $this->getFreightData = $getFreightData;
	}

    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return $this->getFreightData;
    }

    public function headings(): array
    {
        return [
            'Pickup Form',
            'Pickup Location', 
            'Destination Location',
            'Freight Charges' 
        ];
    }
}
