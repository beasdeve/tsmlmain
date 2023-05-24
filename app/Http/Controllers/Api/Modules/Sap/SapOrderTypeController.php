<?php

namespace App\Http\Controllers\Api\Modules\Sap;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Models\SapOrderType;
use JWTAuth;
use Validator;
use File; 
use Storage;
use Response;
use DB; 
use Mail;

class SapOrderTypeController extends Controller
{
    /**
     * This is for get Sap Order Types. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function getOrderType(Request $request)
    {
      \DB::beginTransaction();

        try{ 

          $sapOrderTypes = SapOrderType::get();

          \DB::commit();

          if(!empty($sapOrderTypes))
          {
            return response()->json(['status'=>1,'message' =>'success','result' => $sapOrderTypes],config('global.success_status'));
          }
          else
          { 
            return response()->json(['status'=>1,'message' =>'Somthing went wrong','result' => []],config('global.success_status'));
          } 
           

        }catch(\Exception $e){ 
          \DB::rollback(); 
          return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
        }
    }
}
