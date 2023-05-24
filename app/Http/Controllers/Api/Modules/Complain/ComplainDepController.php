<?php

namespace App\Http\Controllers\Api\Modules\Complain;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Mail\ComplaintMail;
use App\Mail\ComplaintMailToRm;
use App\Models\User;
use App\Models\Models\Department;
use App\Models\Models\DepartmentMail;
use JWTAuth;
use Validator;
use File; 
use Storage;
use Response;
use DB; 
use Mail;

class ComplainDepController extends Controller
{
    /**
     * This is for add storeComplainCategory for admin. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function getDeparment(Request $request)
    {
      \DB::beginTransaction();

        try{  

          $getDep = Department::get();

          \DB::commit();

          if($getDep)
          {
            return response()->json(['status'=>1,'message' =>'Success','result' => $getDep],config('global.success_status'));
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

    /**
     * This is for add storeComplainCategory for admin. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function getDeparmentMail(Request $request)
    {
      \DB::beginTransaction();

        try{
        	 

          $validator = Validator::make($request->all(), [              
            'depa_id'        => 'required', 
          ]);

          if ($validator->fails()) { 
              return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $validator->errors()],config('global.failed_status'));
          }  

          $getDepMail = DepartmentMail::where('depa_id',$request->depa_id)->get();

          \DB::commit();

          if($getDepMail)
          {
            return response()->json(['status'=>1,'message' =>'Success','result' => $getDepMail],config('global.success_status'));
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
