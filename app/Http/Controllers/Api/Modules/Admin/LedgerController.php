<?php

namespace App\Http\Controllers\Api\Modules\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class LedgerController extends Controller
{
       	  /**
    	* This for admin rfq management.
     	*
     	* @param  \App\Orders
     	* @return \Illuminate\Http\Response
    */
   	public function customerListLedger($id)
   	{

 
		$result = [];
        try{         
         	
            $cus_list = DB::table('address')->where('type','A')->where('user_id',$id)
               ->get()->toArray();
           // echo "<pre>";print_r($cus_list);exit();

          if(!empty($cus_list))
          {
          foreach ($cus_list as $key => $value) {
            
            $result[$key]['id'] = $value->id;
            $result[$key]['name'] = $value->company_name;
            $result[$key]['city'] = $value->city;
            $result[$key]['cus_code'] = $value->cus_code;


          }
        }
        else{
          $result = [];
        }

         	return response()->json(['status'=>1,'message' =>'success.','result' => $result],200);
          
        
        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return response()->json([$response]);
        }

   	}
}
