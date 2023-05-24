<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use App\Models\ScExcel;
use Maatwebsite\Excel\Concerns\WithHeadings;
use App\Models\SoTempExcel;

class ExportSoDocs implements FromCollection, WithHeadings
{
	protected $contract_number;
	function __construct($contract_number) 
	{
	    $this->contract_number = $contract_number;
	} 
 
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    { 
        return SoTempExcel::whereIn('contract_number',explode(",",$this->contract_number))->select('id','order_type','sales_organization','distribution_channel','division','sales_office','sales_group','contract_number')->get();
    }

    public function headings(): array
    {
        return [
            'Id',
            'Order Type', 
            'Sales Organization',
            'Distribution Channel', 
            'Division', 
            'Sales Office',
            'Sales Group',
            'Contract Number',  
        ];
    }
}
