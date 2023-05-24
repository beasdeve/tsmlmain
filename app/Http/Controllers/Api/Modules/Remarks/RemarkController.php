<?php

namespace App\Http\Controllers\Api\Modules\Remarks;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Models\Remark;

class RemarkController extends Controller
{
    public function submitremarks(Request $request)
    {       
    	  // dd('ok');

         try{ 

              $all = array();
    	    
    	    foreach ($request->all() as $key => $value) {
    	    	
    	    	 $all['rfq_no'] = $value['rfq_no'];
    	    	 $all['sche_no'] = $value['sche_no'];
    	    	 $all['remarks'] = $value['remarks'];
    	    	 $all['camremarks'] = $value['camremarks'];
    	    	 $all['salesremarks'] = $value['salesremarks'];
    	    	 $all['from'] = $value['from'];
    	    	 $all['to'] = $value['to'];
    	    	 $all['status'] = 1;

    	    	 Remark::create($all);
    	    	
    	    }
            // echo "<pre>";print_r($all);exit();


          

        return response()->json(['status'=>1,
          'message' =>'success',
          'result' => 'remarks created'],
          config('global.success_status'));
      

         }catch(\Exception $e){

               	return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
        }
    }
}
