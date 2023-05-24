<?php

namespace App\Http\Controllers\Api\Modules\Freight;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Tymon\JWTAuth\Exceptions\JWTException;
use Illuminate\Support\Facades\Auth; 
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\ExportFreightCharges;
use App\Models\User;
use App\Models\Models\Product;
use App\Models\Models\Category;
use App\Models\Models\ProductSubCategory;
use App\Models\Models\PriceManagement;
use App\Models\Models\PriceCalculation;
use App\Models\Models\ThresholdLimits;
use App\Models\Models\Freights;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Reader\Exception;
use PhpOffice\PhpSpreadsheet\Writer\Xls;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Reader\Csv;
use App\ServicesMy\AdminLogsService;
use JWTAuth;
use Validator;
use DB; 
use File; 
use Storage;
use Response;
 
use Nullix\CryptoJsAes\CryptoJsAes;


class FreightController extends Controller
{

    /**
     * This is for export Freight Charges for admin . 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function exportExcelFreightCharges(Request $request)
    {
       

      try{ 
             
                $getFreightData = DB::table('freights') 
                ->select( 
                    'freights.pickup_from as pickup_from',
                    'freights.location as pickup_location',
                    'freights.destation_location as destation_location',
                    'freights.freight_charges as freight_charges' 
                    )
                ->orderBy('freights.id','DESC')
                ->get();

                // dd($getFreightData);
            
            if (!empty($getFreightData)) {
              return Excel::download(new ExportFreightCharges($getFreightData), 'freight_price.xlsx');
               // return response()->json(['status'=>1,'message' =>'success.','result' => $getThresholdData],200);
            }
            else{

               return response()->json(['status'=>1,'message' =>'No data found','result' => []],config('global.success_status'));

            }
            
            
            }catch(\Exception $e){
                $response['error'] = $e->getMessage();
                return response()->json([$response]);
            }
    }

    /* This is for import excel Freight Charges for admin . 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function importExcelFreightChargesAdmin(Request $request)
    {
      // dd('importExcelFreightChargesAdmin');

      try
      { 
        $excel = $request->fpricefile;

        if($excel)
        {
          // $date = $request->input('date');

          $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
          $spreadsheet = $reader->load($request->fpricefile);
          $sheetData = $spreadsheet->getActiveSheet()->toArray();
          // dd($sheetData); 
          $removed = array_shift($sheetData);
          $data = json_encode($sheetData);

          foreach($sheetData as $k => $val)
          {
            $freightData = Freights::where('pickup_from',strtoupper($val[0]))
                                    ->where('location',trim($val[1]))
                                    ->where('destation_location',trim($val[2])) 
                                    ->first();
                 
            if(!empty($freightData))
            { 

               
              $upfdata['freight_charges'] = $val[3];
              $upfdata['manage_by'] = Auth::user()->id;
               
                      

              Freights::where('pickup_from',$freightData->pickup_from)
                        ->where('location',$freightData->location)
                        ->where('destation_location',$freightData->destation_location)
                        ->update($upfdata);
                
            }
                
            else
            {
                      
              $createfdata['pickup_from'] = strtoupper($val[0]);
              $createfdata['location'] = $val[1];
              $createfdata['destation_location'] = $val[2];
              $createfdata['freight_charges'] = $val[3]; 
              $createfdata['manage_by'] = Auth::user()->id;
              
              Freights::create($createfdata);
                  
            }  
          }

          $user = Auth::user()->id;
          $sub = 'Freights Updated';
          $purpose = 'Freights Updated';

          $res = (new AdminLogsService)->adminlogs($user,$sub,$purpose);
        } 
        return response()->json(['status'=>1,'message' =>'success','result' => 'Freight charges uploaded successfully.'],config('global.success_status')); 
      }catch(\Exception $e){

        return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
      }
    }

   	/**
     * This is for store new Freights.
     *
     * @param Http\Controllers\Api\Modules\Freight  $product
     * @return \Illuminate\Http\Response
    */
   public function storeFreights(Request $request)
   {
   		\DB::beginTransaction();

   		try{

   			$validator = Validator::make($request->all(), [
                'pickup_from'        => 'required', 
                'pickup_location'     => 'required',
                'destation_location'     => 'required',  
                'freight_charges' => ['required','regex:/^\d+(((,\d+)?,\d+)?,\d+)?$/'], 
	        ]);

	        if ($validator->fails()) { 
	            return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $validator->errors()],config('global.failed_status'));
	        }

	        $input['pickup_from'] = $request->pickup_from;
    	   	$input['location'] = $request->pickup_location;
          $input['destation_location'] = $request->destation_location;
    	   	$input['freight_charges'] = $request->freight_charges;
    	   	$input['status'] = $request->status;
          $input['manage_by'] = Auth::user()->id;

    	   	// dd($input);
          $getFreightD = Freights::where('pickup_from',strtoupper($request->pickup_from))
                                  ->where('location',$request->pickup_location)
                                  ->where('destation_location',$request->destation_location)
                                  ->first();
          if (empty($getFreightD)) 
          {
            # code...
          
      	   	$freightsData = Freights::create($input);

            $user = Auth::user()->id;
            $sub = 'Frieght Created';
            $purpose = 'Frieght Created';

            $res = (new AdminLogsService)->adminlogs($user,$sub,$purpose);

      	   	\DB::commit();

      	   	if($freightsData)
            {
		            return response()->json(['status'=>1,'message' =>'New freights added successfully','result' => $freightsData],config('global.success_status'));
		        }
		        else{ 
		         	return response()->json(['status'=>1,'message' =>'Somthing went wrong','result' => []],config('global.success_status'));
		        }
          }
          else{
              return response()->json(['status'=>1,'message' =>'Freights price already exists.','result' => []],config('global.success_status'));
          } 
    		 

   		}catch(\Exception $e){ 
    	  	\DB::rollback(); 
           	return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
        }
   	}
 
	/**
     * This is for freights list.
     *
     * @param  Http\Controllers\Api\Modules\Freight  $product
     * @return \Illuminate\Http\Response
    */
	public function getFreights(Request $request)
	{
		\DB::beginTransaction();

      	try{ 

          $getfreightsData = DB::table('freights')
                                ->leftjoin('admins','freights.manage_by','admins.id')
                                ->select('freights.id as freightid',
                                        'freights.pickup_from as pickup_from',
                                        'freights.location as pickup_location',
                                        'freights.destation_location as destation_location',
                                        'freights.freight_charges as freight_charges',
                                        'freights.status as status',
                                        'admins.name as manage_name')
                                ->orderBy('freights.id','desc')
                                ->where('status','!=',3);
            if($request->pickupfrom && $request->status && $request->pickup_ocation && $request->destation_location) {
              // dd($request->pickup_ocation);
                $freightsData = $getfreightsData
                              ->where('pickup_from','LIKE',"%{$request->pickupfrom}%")
                              ->where('status',$request->status)
                              ->where('location','LIKE',"%{$request->pickup_ocation}%")
                              ->where('destation_location','LIKE',"%{$request->destation_location}%")
                              ->get();
            }
            if($request->pickupfrom && $request->status && $request->pickup_ocation) {
              // dd($request->pickup_ocation);
                $freightsData = $getfreightsData
                              ->where('pickup_from','LIKE',"%{$request->pickupfrom}%")
                              ->where('status',$request->status)
                              ->where('location','LIKE',"%{$request->pickup_ocation}%")
                              ->get();
            } 
                              
            if($request->pickupfrom && $request->status) {
                $freightsData = $getfreightsData
                              ->where('pickup_from','LIKE',"%{$request->pickupfrom}%")
                              ->where('status',$request->status)
                              ->get();
            }
            if($request->pickup_ocation && $request->destation_location) { 
                $freightsData = $getfreightsData
                              ->where('pickup_from','LIKE',"%{$request->pickupfrom}%")
                              ->where('destation_location','LIKE',"%{$request->destation_location}%")
                              ->get();
            }
            if($request->pickup_ocation) {
              // dd($request->pickup_ocation);
                $freightsData = $getfreightsData 
                              ->where('location','LIKE',"%{$request->pickup_ocation}%")
                              ->get();
            }  
            if($request->pickupfrom) {
                $freightsData = $getfreightsData
                              ->where('pickup_from','LIKE',"%{$request->pickupfrom}%")
                              ->get();
            }
            if($request->destation_location) { 
                $freightsData = $getfreightsData
                              ->where('destation_location','LIKE',"%{$request->destation_location}%")
                              ->get();
            }
            if($request->status) {
                $freightsData = $getfreightsData
                              ->where('status',$request->status)
                              ->get();
            }
            else{
                $freightsData = $getfreightsData->get();
            }

            \DB::commit();

            if(!empty($freightsData))
            {
	            return response()->json(['status'=>1,'message' =>config('global.sucess_msg'),
	            	'result' => $freightsData],config('global.success_status'));
	          }
	          else{ 
	         	 return response()->json(['status'=>1,'message' =>'No data found','result' => []],
	        		config('global.success_status'));
	          }


       	}catch(\Exception $e){ 
        	\DB::rollback(); 
            return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
      	}
	}

	/**
     * This is for freights details.
     *
     * @param  Http\Controllers\Api\Modules\Freight  $product
     * @return \Illuminate\Http\Response
    */
	public function editFreights($id)
	{
		\DB::beginTransaction();

      	try{ 

            $freightsData = DB::table('freights')
                                ->leftjoin('admins','freights.manage_by','admins.id')
                                ->select( 
                                        'freights.id as freights_id',
                                        'freights.pickup_from as pickup_from',
                                        'freights.location as pickup_location',
                                        'freights.destation_location as destation_location',
                                        'freights.freight_charges as freight_charges',
                                        'admins.name as manage_name',
                                        'freights.status as status', 
                                        )
                                ->orderBy('freights.id','desc')
                                ->where('freights.status','!=',3)
                                ->where('freights.id',$id)
                                ->first();
      	  	// $freightsData =  Freights::find($id);


                \DB::commit();

                if(!empty($freightsData))
                {
		            return response()->json(['status'=>1,'message' =>config('global.sucess_msg'),
		            	'result' => $freightsData],config('global.success_status'));
		        }
		        else{ 
		         	 return response()->json(['status'=>1,'message' =>'Data not found','result' => []],
		        		config('global.success_status'));
		        }


            }catch(\Exception $e){ 
            	   \DB::rollback(); 
                   return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
          }
	}

	/**
     * This is for update freights details.
     *
     * @param  Http\Controllers\Api\Modules\Freight $freights
     * @return \Illuminate\Http\Response
    */
	public function updateFreights(Request $request)
	{
		\DB::beginTransaction();

   		try{

   			$validator = Validator::make($request->all(), [
   				'freights_id'        => 'required|numeric', 
          'pickup_from'        => 'required', 
          'pickup_location'     => 'required',
          'destation_location'     => 'required',  
          'freight_charges' => ['required','regex:/^\d+(((,\d+)?,\d+)?,\d+)?$/'], 
	        ]);

	        if ($validator->fails()) { 
	            return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $validator->errors()],config('global.failed_status'));
	        }

	        $update['pickup_from'] = $request->pickup_from;
    	   	$update['location'] = $request->pickup_location;
          $update['destation_location'] = $request->destation_location;
    	   	$update['freight_charges'] = $request->freight_charges;
    	   	$update['status'] = $request->status;
          $update['manage_by'] = Auth::user()->id;

    	   	// dd($input);

    	   	$freightsData = Freights::where('id',$request->freights_id)->update($update);

          $user = Auth::user()->id;
          $sub = 'Frieght Updated';
          $purpose = 'Frieght Updated';

          $res = (new AdminLogsService)->adminlogs($user,$sub,$purpose);

    	   	\DB::commit();

    	   	if($freightsData)
                {
		            return response()->json(['status'=>1,'message' =>'Freights data updated successfully','result' => $freightsData],config('global.success_status'));
		        }
		        else{ 
		         	return response()->json(['status'=>1,'message' =>'Somthing went wrong','result' => []],config('global.success_status'));
		        } 
    		 

   		}catch(\Exception $e){ 
    	  	\DB::rollback(); 
           	return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
        }
	}

	/**
     * This is for active freights .
     *
     * @param  Http\Controllers\Api\Modules\Freight $freights
     * @return \Illuminate\Http\Response
    */
	public function activeFreights($id)
	{

		\DB::beginTransaction();

  	  	try{ 

  	  		$getFreight = Freights::where('id',$id)->first();  

	        if(!empty($getFreight))
	        { 
	    		$input['status'] = 1; //2=> Inactive/1=>Active. 
          $input['manage_by'] = Auth::user()->id;
	        $updateFreight = Freights::where('id',$getFreight->id)->update($input);

	 			\DB::commit();

	        	return response()->json(['status'=>1,'message' =>'Freight status active successfully.']); 
	        	 
	        }
	        else
	        {
	        	\DB::commit();

	        	return response()->json(['status'=>0,'message' =>'No data found'],config('global.success_status')); 
	            // return response()->json(['status'=>0,'message'=>'No data found'],200);
	        } 
	         


        }catch(\Exception $e){

        	   \DB::rollback();

               return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
      	}
	}


	/**
     * This is for inactive freights.
     *
     * @param  Http\Controllers\Api\Modules\Freight $freights
     * @return \Illuminate\Http\Response
    */
	public function inactiveFreights($id)
	{

		\DB::beginTransaction();

  	  	try{ 

  	  		$getFreight = Freights::where('id',$id)->first();  

	        if(!empty($getFreight))
	        { 
	    		$input['status'] = 2; //2=> Inactive/1=>Active. 
            $updateFreight['manage_by'] = Auth::user()->id;
	        	$updateFreight = Freights::where('id',$getFreight->id)->update($input);

	 			\DB::commit();

	        	return response()->json(['status'=>1,'message' =>'Freight status inactive successfully.']); 
	        	 
	        }
	        else
	        {
	        	\DB::commit();

	        	return response()->json(['status'=>0,'message' =>'No data found'],config('global.success_status')); 
	            // return response()->json(['status'=>0,'message'=>'No data found'],200);
	        } 
	         


        }catch(\Exception $e){

        	   \DB::rollback();

               return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
      	}
	}

	/**
     * This is for delete inactive.
     *
     * @param  Http\Controllers\Api\Modules\Freight $freights
     * @return \Illuminate\Http\Response
    */
	public function deleteFreights($id)
	{

		\DB::beginTransaction();

  	  	try{ 

  	  		$getFreight = Freights::where('id',$id)->first();  

	        if(!empty($getFreight))
	        { 
	    		$input['status'] = 3; //2=> Inactive/1=>Active. 

	        	$updateFreight = Freights::where('id',$getFreight->id)->update($input);

	 			\DB::commit();

	        	return response()->json(['status'=>1,'message' =>'Freight deleted successfully.']); 
	        	 
	        }
	        else
	        {
	        	\DB::commit();

	        	return response()->json(['status'=>0,'message' =>'No data found'],config('global.success_status')); 
	            // return response()->json(['status'=>0,'message'=>'No data found'],200);
	        } 
	         


        }catch(\Exception $e){

        	   \DB::rollback();

               return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
      	}
	}
}
