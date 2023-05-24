<?php

namespace App\Http\Controllers\Api\Modules\Temp;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\ExportDocs;
use App\Exports\ExportSoDocs;
use App\Models\Models\SoTempExcel;
use JWTAuth;
use Validator;
use File; 
use Storage;
use Response;
use DB; 

class SoTemporaryController extends Controller
{
    public function SoExcelSubmit(Request $request)
    {
    	\DB::beginTransaction();

   		try{ 
	    	 

	    	$input['order_type'] = $request->OrganizationalData['OrderType'];
	    	$input['sales_organization'] = $request->OrganizationalData['SalesOrganization'];
	      	$input['distribution_channel'] = $request->OrganizationalData['DistributionChannel'];
		   	$input['division'] = $request->OrganizationalData['Division'];
		   	$input['sales_office'] = $request->OrganizationalData['Salesoffice'];
	      	$input['sales_group'] = $request->OrganizationalData['Salesgroup']; 
		   	$input['contract_number'] = $request->Contract['ContractNumber'];

	    	 

		   	$soExcelData = SoTempExcel::create($input);
		   	\DB::commit();

    	   	if($soExcelData)
                {
		            return response()->json(['status'=>1,'message' =>'SO Data added successfully'],config('global.success_status'));
		        }
		        else{ 
		         	return response()->json(['status'=>1,'message' =>'Somthing went wrong','result' => []],config('global.success_status'));
		        } 

    	 }catch(\Exception $e){ 
    	  	\DB::rollback(); 
           	return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
        }
    }

    public function SoExcelDownload($contract_no=null)
    {  
    	 // dd("SoExcelDownload");
    	$contract_number = $contract_no;  	 
    	return Excel::download(new ExportSoDocs($contract_number), 'so.xlsx');
    }
}
