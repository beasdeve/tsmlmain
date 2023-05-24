<?php

namespace App\Http\Controllers\Api\Modules\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Models\AdminLog;

class AdminLogController extends Controller
{
    /**
      * This is for admin log list.
      *
      * @param  \App\Orders
      * @return \Illuminate\Http\Response
    */

    public function adminLogsList(Request $request)
      {
          try{
              
               
              $arr = array();

              if(!empty($request->input('fromdate')) && !empty($request->input('todate')))
              {
                 
                $fromdate = date('Y/m/d',strtotime($request->input('fromdate'))); 
                $todate = date('Y/m/d',strtotime($request->input('todate')));  

                $alllogs = AdminLog::whereDate('created_at','>=', $fromdate)
                                    ->whereDate('created_at','<=', $todate)
                                    ->with('admins')
                                    ->get();

              }
              else
              {
                 
                $alllogs = AdminLog::with('admins')->get();
              }
               
              
              
              

              if(!empty($alllogs))
              {
                  foreach ($alllogs as $key => $value) {
                     
                      $arr[$key]['id'] = $value->id;
                      $arr[$key]['name'] = $value->admins['name'];
                      $arr[$key]['email'] = $value->admins['email'];
                      $arr[$key]['subject'] = $value->subject;
                      $arr[$key]['purpose'] = $value->purpose;
                      $arr[$key]['date'] = date('d-m-Y H:m:s A',strtotime($value->created_at));
                      // $arr[$key]['date'] = date('d-m-Y',strtotime($value->created_at));
                    // dd($value->admins['email']);
                  }
              }
              // dd($alllogs);
              // echo "<pre>";print_r($alllogs);exit();
              return response()->json(['status'=>1,'message' =>'success.','result' => $arr],200);

          }catch(\Exception $e){

           \DB::rollback();

           return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
         }
      }


      public function adminLogsDel($id)
      {
          try{
              
              // dd($id);
              $alllogs = AdminLog::where('id',$id)->delete();

              return response()->json(['status'=>1,'message' =>'success.','result' => 'deleted'],200);

          }catch(\Exception $e){

           \DB::rollback();

           return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
         }
      }
}
