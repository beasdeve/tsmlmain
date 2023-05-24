<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use App\Models\Models\ScExcel;

class ExportDocs implements FromCollection, WithHeadings
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
        // return ScExcel::where($var)->get();

        return ScExcel::whereIn('id',$this->contract_number)->get();
    }

    public function headings(): array
    {
        return [
        	'id',
            'ContractType',
            'SalesOrganization',
            'DistributionChannel',
            'Division',
            'ContractValidFrom',
            'ContractValidTo',
            'Salesoffice',
            'Salesgroup',
            'Incoterms',
            'Paymentterms',
            'QtyContractTSML',
            'Sold_To_Party',
            'Ship_To_Party',
            'Cust_Referance',
            'NetValue',
            'Cust_Ref_Date',
            'Shp_Cond',
            'item',
            'Material',
            'Quantity',
            'CustomarMaterialNumber',
            'OrderQuantity',
            'Plant',
            'ItemNumber',
            'CnTy',
            'Amount',
            'Freight',
            'CustomerGroup4',
            'FreightIndicator',
            'date',
        ];
    }
}
