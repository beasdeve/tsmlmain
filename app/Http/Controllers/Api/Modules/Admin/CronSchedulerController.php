<?php

namespace App\Http\Controllers\Api\Modules\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class CronSchedulerController extends Controller
{
    public function rejectByValidtill()
    {
        
        try{
            
            $date = date('Y-m-d');
            // dd($date);

            $data = DB::table('quote_schedules')->leftjoin('quotes','quote_schedules.quote_id','quotes.id')->select('quote_schedules.*','quotes.rfq_no')
                 ->where('quote_schedules.quote_status','!=',1)->whereNull('quote_schedules.deleted_at')
                 ->whereNull('quotes.deleted_at')
                 ->get();
                 // dd($data);

                 foreach ($data as $key => $value) {
                    
                    $valid = $value->valid_till;
                    $vallid_till = date("Y-m-d", strtotime($valid));
                    // dd($vallid_till);
                 	if($vallid_till < $date)
                 	 {	
                 	   // dd($value->id);
                 	  $order = DB::table('orders')->where('rfq_no',$value->rfq_no)->get()->toArray();
                     
                 	  if(empty($order))
                 	  {
                 	  	
                 	  	  DB::table('quote_schedules')->where('id',$value->id)->update(['quote_status' => 2]);
                 	  }
                 	}

                      $arr = array();
                 	  $rfqs = DB::table('quote_schedules')->leftjoin('quotes','quote_schedules.quote_id','quotes.id')->select('quote_schedules.quote_status','quotes.rfq_no')
                 	         ->where('quotes.rfq_no',$value->rfq_no)
			                 ->whereNull('quote_schedules.deleted_at')
			                 ->whereNull('quotes.deleted_at')
			                 ->get();
                          foreach ($rfqs as $k => $v) {
                          	  if($v->quote_status == 2)
                          	  {
                                array_push($arr,$v->quote_status);
                            }
                          }
                        // dd(count($arr));

                        if(count($rfqs) == count($arr))
                        {
                              DB::table('quotes')->where('rfq_no',$value->rfq_no)->update(['kam_status' => 10]);
                        } 
                          
                 }


            // dd($data);
            return response()->json(['status'=>1,'message' =>'success.','result' => 1],200);

        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return response()->json([$response]);
        }    
    }
}
