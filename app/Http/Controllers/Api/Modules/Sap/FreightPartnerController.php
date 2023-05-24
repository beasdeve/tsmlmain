<?php

namespace App\Http\Controllers\Api\Modules\Sap;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class FreightPartnerController extends Controller
{
    public function getfreightpartner()
    {

          try{   

              $res = DB::table('sap_frieght_partner')->get();
               
                  // dd($res);
               if(!empty($res))
               {
               	  foreach ($res as $key => $value) {
               	  	   
               	  	   $arr[$key]['id'] = $value->id;
               	  	   $arr[$key]['fr_part_code'] = $value->fr_part_code;
	                   $arr[$key]['frt_part_name'] = $value->frt_part_name;
	                   

               	  }
                   

               }
         
              return response()->json(['status'=>1,
                'message' =>'success',
                'result' => $arr],
                config('global.success_status'));


        }catch(\Exception $e){

         return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
       }

         
      }
}
