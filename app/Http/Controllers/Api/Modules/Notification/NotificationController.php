<?php

namespace App\Http\Controllers\Api\Modules\Notification;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Models\CusNotification;
use App\Models\Models\Camnotification;
use App\Models\Models\SalesNotification;
use App\Models\Models\OptNotification;
use App\Models\Models\PlantNotification;
use App\Models\Models\SalesheadNotification;
use App\Models\User;
use JWTAuth;
use Validator;
use Response;
use DB;

class NotificationController extends Controller
{
	public function clearNotification(Request $request)
    {

    	try{ 
             
            $validation = \Validator::make($request->all(),[ 
        		"user_type" => "required",
                "user_id" => "required", 
            ]);

            $chk = User::where('id',$request->user_id)->first();
            // dd($chk);
             
            if (!empty($chk) && ($chk->user_type == $request->user_type)) 
            {
            	// dd('ok');
            	if ($request->user_type == 'C') // Clear customer notifecations.....
            	{
            		 
            		$data['status'] = 2;
            		$clearNoti = CusNotification::where('sender_ids',$request->user_id)
            										->update($data);
            		return response()->json(['status'=>1, 'message' =>'success','result' => 'Notification cleared'],config('global.success_status'));
            	}
            	if ($request->user_type == 'Kam') // Clear kam notifecations.....
            	{
            		// dd('Clear Kam notifecations');
            		$data['status'] = 2;
            		$clearNoti = Camnotification::where('sender_ids',$chk->zone)
            										->update($data);
            		return response()->json(['status'=>1, 'message' =>'success','result' => 'Notification cleared'],config('global.success_status'));
            	}
            	if ($request->user_type == 'Sales') // Clear Sales notifecations.....
            	{
            		// dd('Clear Sales notifecations');
            		$data['status'] = 2;
            		$clearNoti = DB::table('sales_notifications')->update($data);
            		return response()->json(['status'=>1, 'message' =>'success','result' => 'Notification cleared'],config('global.success_status'));
            	}
            }
            else{
            	return response()->json(['status'=>0,'message' =>'No user found.','result' => []]);
            }
                  
		    // echo "<pre>";print_r($data);exit();
		    return response()->json(['status'=>1, 'message' =>'success','result' => 'Notification cleared'],config('global.success_status'));


      	}catch(\Exception $e){

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }

    	 
    }

    public function optNotificationSubmit(Request $request)
    {

    	  try{ 
                 // dd($request->all());
                 // $data = array();
		    	
		        
		         // echo "<pre>";print_r($url_type);exit();

		    	 $data['desc'] = $request->input('desc');
		    	 $data['desc_no'] = $request->input('desc_no');
		    	 $data['sender_ids'] = $request->input('sender_ids');
		    	 $data['url_type'] = $request->input('url_type');
		    	 $data['status'] = 1;
		    	  // dd($data);

		    	 OptNotification::create($data);

		    	 // echo "<pre>";print_r($data);exit();
		        return response()->json(['status'=>1,
		          'message' =>'success',
		          'result' => 'Notification submitted'],
		          config('global.success_status'));


      }catch(\Exception $e){

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }

    	 
    }

    public function getOptNotification()
    {

    	  try{ 

                 $data = array();

		         $res = DB::table('opt_notification') 
                 ->leftjoin('users','opt_notification.sender_ids','users.id')
		         ->select('opt_notification.*','users.org_name as plant_name')
		         ->where('opt_notification.status',1)
		         ->get();

		         foreach ($res as $key => $value) {
		         	 
		         	 $data[$key]['id'] = $value->id;
		         	 $data[$key]['desc'] = $value->desc;
			    	 $data[$key]['desc_no'] = $value->desc_no; 
			    	 $data[$key]['url_type'] = $value->url_type;
			    	 $data[$key]['plant_name'] = $value->plant_name;
			    	 $data[$key]['date'] = date("m-d-Y", strtotime($value->created_at));
			    	 
		         }
		         
		    	 


		    	 // echo "<pre>";print_r($id);exit();
		        return response()->json(['status'=>1,
		          'message' =>'success',
		          'result' => $data],
		          config('global.success_status'));


      }catch(\Exception $e){

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }

    	 
    }

    public function camNotificationSubmit(Request $request)
    {

    	  try{ 
                 
                 $data = array();
		    	
		         
		         $url_type = $request->input('url_type');
		         // echo "<pre>";print_r($url_type);exit();
		         if($url_type == "R")
		         {

		            $res = DB::table('quotes')->leftjoin('users','quotes.user_id','users.id')
		            ->select('users.zone')
		            ->where('quotes.rfq_no',$request->input('desc_no'))
		            ->whereNull('quotes.deleted_at')->first();

                     $zone = $res->zone;
		         }
		         

		         else{
                     
                     $desc_no = DB::table('orders')->where('po_no',$request->input('desc_no'))->first();
                     
		         	 $resA = DB::table('quotes')->leftjoin('users','quotes.user_id','users.id')
		            ->select('users.zone')
		            ->where('quotes.rfq_no',$desc_no->rfq_no)
		            ->whereNull('quotes.deleted_at')->first();
		            // echo "<pre>";print_r($resA);exit();

		            $zone = $resA->zone;
		         }

		    	 $data['desc'] = $request->input('desc');
		    	 $data['desc_no'] = $request->input('desc_no');
		    	 $data['user_id'] = $request->input('user_id');
		    	 $data['url_type'] = $request->input('url_type');
		    	 $data['status'] = 1;
		    	 $data['sender_ids'] = $zone;

		    	 Camnotification::create($data);

		    	 // echo "<pre>";print_r($data);exit();
		        return response()->json(['status'=>1,
		          'message' =>'success',
		          'result' => 'Notification submitted'],
		          config('global.success_status'));


      }catch(\Exception $e){

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }

    	 
    }



    public function getCamNotification($id)
    {

    	  try{ 

                 $data = array();

		         $res = DB::table('users')->leftjoin('cam_notifications','users.zone','cam_notifications.sender_ids')
                 ->leftjoin('users as cus_user','cam_notifications.user_id','cus_user.id')
		         ->select('cam_notifications.*','cus_user.name as cus_name')->where('users.id',$id)
		         ->orderBy('cam_notifications.id','desc')
		         ->where('cam_notifications.status',1)
		         ->get();

		         foreach ($res as $key => $value) {
		         	 
		         	 $data[$key]['id'] = $value->id;
		         	 $data[$key]['desc'] = $value->desc;
			    	 $data[$key]['desc_no'] = $value->desc_no;
			    	 $data[$key]['user_id'] = $value->cus_name;
			    	 $data[$key]['url_type'] = $value->url_type;
			    	 $data[$key]['date'] = date("m-d-Y", strtotime($value->created_at));
			    	 
		         }
		         
		    	 


		    	 // echo "<pre>";print_r($id);exit();
		        return response()->json(['status'=>1,
		          'message' =>'success',
		          'result' => $data],
		          config('global.success_status'));


      }catch(\Exception $e){

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }

    	 
    }


    public function cusNotificationSubmit(Request $request)
    {

    	  try{ 
                 
                 $data = array();
		    	
		        
		         // echo "<pre>";print_r($url_type);exit();

		    	 $data['desc'] = $request->input('desc');
		    	 $data['desc_no'] = $request->input('desc_no');
		    	 $data['user_id'] = $request->input('user_id');
		    	 $data['url_type'] = $request->input('url_type');
		    	 $data['status'] = 1;
		    	 $data['sender_ids'] = $request->input('sender_id');

		    	 CusNotification::create($data);

		    	 // echo "<pre>";print_r($data);exit();
		        return response()->json(['status'=>1,
		          'message' =>'success',
		          'result' => 'Notification submitted'],
		          config('global.success_status'));


      }catch(\Exception $e){

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }

    	 
    }


    public function getCusNotification($id)
    {

    	  try{ 

                 $data = array();

		         $res = DB::table('cus_notifications')
		         ->leftjoin('users','cus_notifications.user_id','users.id')
		         ->select('cus_notifications.*','users.name as uname')
		         ->where('cus_notifications.sender_ids',$id)
		         ->where('cus_notifications.status',1)
		         ->orderBy('cus_notifications.id','desc')
		         ->get();

		         foreach ($res as $key => $value) {
		         	 
		         	 $data[$key]['id'] = $value->id;
		         	 $data[$key]['desc'] = $value->desc;
			    	 $data[$key]['desc_no'] = $value->desc_no;
			    	 $data[$key]['user_id'] = $value->uname;
			    	 $data[$key]['url_type'] = $value->url_type;
			    	 $data[$key]['date'] = date("m-d-Y", strtotime($value->created_at));
			    	 
			    	 
		         }
		         
		    	 


		    	 // echo "<pre>";print_r($id);exit();
		        return response()->json(['status'=>1,
		          'message' =>'success',
		          'result' => $data],
		          config('global.success_status'));


      }catch(\Exception $e){

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }

    	 
    }

    


    public function salesNotificationSubmit(Request $request)
    {

    	  try{ 
                 
                 $data = array();
		    	
		        
		         // echo "<pre>";print_r($url_type);exit();

		    	 $data['desc'] = $request->input('desc');
		    	 $data['desc_no'] = $request->input('desc_no');
		    	 $data['user_id'] = $request->input('user_id');
		    	 $data['url_type'] = $request->input('url_type');
		    	 $data['status'] = 1;
		   

		    	 SalesNotification::create($data);

		    	 // echo "<pre>";print_r($data);exit();
		        return response()->json(['status'=>1,
		          'message' =>'success',
		          'result' => 'Notification submitted'],
		          config('global.success_status'));


      }catch(\Exception $e){

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }

    	 
    }




    public function getSalesNotification()
    {

    	  try{ 

                 $data = array();

		         $res = DB::table('sales_notifications')
		         ->leftjoin('users','sales_notifications.user_id','users.id')
		         ->select('sales_notifications.*','users.name')
		         ->orderBy('sales_notifications.id','desc')
		         ->where('sales_notifications.status',1)->get();
		         

		         foreach ($res as $key => $value) {
		         	 
		         	 $data[$key]['id'] = $value->id;
		         	 $data[$key]['desc'] = $value->desc;
			    	 $data[$key]['desc_no'] = $value->desc_no;
			    	 $data[$key]['user_id'] = $value->name;
			    	 $data[$key]['url_type'] = $value->url_type;
			    	 $data[$key]['date'] = date("m-d-Y", strtotime($value->created_at));
			    	 
			    	 
		         }
		         
		    	 


		    	 // echo "<pre>";print_r($id);exit();
		        return response()->json(['status'=>1,
		          'message' =>'success',
		          'result' => $data],
		          config('global.success_status'));


      }catch(\Exception $e){

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }

    	 
    }



    public function upCamNoti(Request $request)
    {

    	  try{ 

                 
               Camnotification::where('id',$request->input('id'))->update(['status' => $request->input('status')]);

		    	 // echo "<pre>";print_r($id);exit();
		        return response()->json(['status'=>1,
		          'message' =>'success',
		          'result' => 'Notification updated'],
		          config('global.success_status'));


	      }catch(\Exception $e){

	       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
	     }
    }


     public function upCusNoti(Request $request)
    {

    	  try{ 

                 
               CusNotification::where('id',$request->input('id'))->update(['status' => $request->input('status')]);

		    	 // echo "<pre>";print_r($id);exit();
		        return response()->json(['status'=>1,
		          'message' =>'success',
		          'result' => 'Notification updated'],
		          config('global.success_status'));


	      }catch(\Exception $e){

	       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
	     }
   }


    public function upSalesNoti(Request $request)
    {

    	  try{ 

                 
               SalesNotification::where('id',$request->input('id'))->update(['status' => $request->input('status')]);

		    	 // echo "<pre>";print_r($id);exit();
		        return response()->json(['status'=>1,
		          'message' =>'success',
		          'result' => 'Notification updated'],
		          config('global.success_status'));


	      }catch(\Exception $e){

	       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
	     }
    }



    public function plantNotificationSubmit(Request $request)
    {

    	  try{ 
                 // dd($request->all());
                 // $data = array();
		    	
		         $res = DB::table('plants')->leftjoin('users','plants.name','users.org_name')->where('plants.code',$request->input('plant'))
		         ->select('users.id')->get();
		         // echo "<pre>";print_r($value->id);exit();
               
                   foreach ($res as $key => $value) {
                   	# code...
                   
	                 $data['desc'] = $request->input('desc');
			    	 $data['desc_no'] = $request->input('desc_no');
			    	 $data['sender_id'] = 1;
			    	 $data['plant_id'] = $value->id;
			    	 $data['url_type'] = "";
			    	 $data['status'] = 1;
			    	  // dd($data);

			    	 PlantNotification::create($data);
			    	}
			    	
                

		    	 

		    	 // echo "<pre>";print_r($data);exit();
		        return response()->json(['status'=>1,
		          'message' =>'success',
		          'result' => 'Notification submitted'],
		          config('global.success_status'));


      }catch(\Exception $e){

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }

    	 
    }



    public function getPlantNotification($id)
    {

    	  try{ 

                 $data = array();

		         $res = PlantNotification::where('plant_id',$id)->where('status',1)->with('userName')->orderBy('id','desc')->get();
		         
                 if(!empty($res))
                 {
		         foreach ($res as $key => $value) {
		         	 
		         	 $data[$key]['id'] = $value->id;
		         	 $data[$key]['desc'] = $value->desc;
			    	 $data[$key]['desc_no'] = $value->desc_no;
			    	 $data[$key]['user_name'] = $value['userName']['name'];
			    	 $data[$key]['url_type'] = $value->url_type;
			    	 $data[$key]['date'] = date("m-d-Y", strtotime($value->created_at));
			    	 
			    	 
		         }
		     }
		         

		    	 // echo "<pre>";print_r($res);exit();
		        return response()->json(['status'=>1,
		          'message' =>'success',
		          'result' => $data],
		          config('global.success_status'));


      }catch(\Exception $e){

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }

    	 
    }


    public function clearsinglemsg($id)
    {

    	  try{ 

                 $data = array();

		         PlantNotification::where('id',$id)->update(['status' => 2]);
		         
		    	 // echo "<pre>";print_r($res);exit();
		        return response()->json(['status'=>1,
		          'message' =>'success',
		          'result' => 'Ntification updated'],
		          config('global.success_status'));


      }catch(\Exception $e){

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }

    	 
    }


    public function clearallPlantNoti()
    {

    	  try{ 

                 $data = array();

		         DB::table('plant_notifications')->update(['status' => 2]);
		         
		    	 // echo "<pre>";print_r($res);exit();
		        return response()->json(['status'=>1,
		          'message' =>'success',
		          'result' => 'Ntification updated'],
		          config('global.success_status'));


      }catch(\Exception $e){

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }

    	 
    }



    public function shNotificationSubmit(Request $request)
    {

    	  try{ 
                 
                 $data = array();
		    	
		         // echo "<pre>";print_r($request->input('desc'));exit();


		    	 $data['desc'] = $request->input('desc');
		    	 $data['desc_no'] = $request->input('desc_no');
		    	 $data['url_type'] = "R";
		    	 $data['status'] = 1;
		    	 $data['sender_ids'] = $request->input('sender_ids');

		    	 SalesheadNotification::create($data);

		    	 // echo "<pre>";print_r($data);exit();
		        return response()->json(['status'=>1,
		          'message' =>'success',
		          'result' => 'Notification submitted'],
		          config('global.success_status'));


      }catch(\Exception $e){

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }

    	 
    }



    public function getShNotification()
    {

    	  try{ 

                 $data = array();

		         $res = DB::table('saleshead_notifications')
                 ->leftjoin('users','saleshead_notifications.sender_ids','users.id')
		         ->select('saleshead_notifications.*','users.name as cus_name')
		         ->orderBy('saleshead_notifications.id','desc')
		         ->where('saleshead_notifications.status',1)
		         ->get();

		         foreach ($res as $key => $value) {
		         	 
		         	 $data[$key]['id'] = $value->id;
		         	 $data[$key]['desc'] = $value->desc;
			    	 $data[$key]['desc_no'] = $value->desc_no;
			    	 $data[$key]['user_id'] = $value->cus_name;
			    	 $data[$key]['url_type'] = $value->url_type;
			    	 $data[$key]['date'] = date("m-d-Y", strtotime($value->created_at));
			    	 
		         }
		         
		    	 


		    	 // echo "<pre>";print_r($id);exit();
		        return response()->json(['status'=>1,
		          'message' =>'success',
		          'result' => $data],
		          config('global.success_status'));


      }catch(\Exception $e){

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }

    	 
    }



    public function upShNotification($id)
    {

    	  try{ 

                 $data = array();

		         $res = SalesheadNotification::where('id',$id)->update(['status' => 2]);
		         

		    	 // echo "<pre>";print_r($res);exit();
		        return response()->json(['status'=>1,
		          'message' =>'success',
		          'result' => 'Status Updated'],
		          config('global.success_status'));


      }catch(\Exception $e){

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }

    	 
    }



    public function upShNotificationAll()
    {

    	  try{ 

                 $data = array();

		         DB::table('saleshead_notifications')->update(['status' => 2]);
		         

		    	 // echo "<pre>";print_r($res);exit();
		        return response()->json(['status'=>1,
		          'message' =>'success',
		          'result' => 'Status Updated'],
		          config('global.success_status'));


      }catch(\Exception $e){

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }

    	 
    }

    	 
    




}
