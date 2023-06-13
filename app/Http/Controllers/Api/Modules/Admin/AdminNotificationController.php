<?php

namespace App\Http\Controllers\Api\Modules\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Models\Adminnotification;
use DB;

class AdminNotificationController extends Controller
{
    public function getAllNotifcation()
    {
    	try{ 
           
         	$arr = array();
			$notification = Adminnotification::all();

         	// echo "<pre>";print_r($notification);exit();
         	if(!empty($notification))
         	{
         	foreach ($notification as $key => $value) {
         		
         		  $arr[$key]['id'] = $value->id;
         		  $arr[$key]['description'] = $value->description;
         		  $arr[$key]['date'] = date("d-m-Y", strtotime($value->created_at));
         	}
         }
	    	 
	        return response()->json([
		        'status'=>1,
		        'message' =>'success',
		        'result' => $arr
	        ],
	        config('global.success_status'));


        }catch(\Exception $e){

        	return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
    	}
    }

    // --------------------------- clear notification all ------------------------------------
    public function clearNotifcationAll()
    {
    	 \DB::beginTransaction();
    	try{ 
           
         	
			// $notification = Adminnotification::delete();
			DB::table('adminnotifications')->delete();;
            \DB::commit();
         	// echo "<pre>";print_r($notification);exit();
	    	 
	        return response()->json([
		        'status'=>1,
		        'message' =>'success',
		        'result' => 'All notification cleared'
	        ],
	        config('global.success_status'));


        }catch(\Exception $e){
            
            \DB::rollback();
        	return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
    	}
    }
    // ---------------------------------------------------------------------------------------

    // --------------------------- clear notification by id ------------------------------------
    public function clearNotifcation($id)
    {
    	  \DB::beginTransaction();
    	try{ 
           
         	
			$notification = Adminnotification::where('id',$id)->delete();
            \DB::commit();
         	// echo "<pre>";print_r($notification);exit();
	    	 
	        return response()->json([
		        'status'=>1,
		        'message' =>'success',
		        'result' => 'Notification cleared'
	        ],
	        config('global.success_status'));


        }catch(\Exception $e){
            
            \DB::rollback();
        	return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
    	}
    }
    // ---------------------------------------------------------------------------------------
}
