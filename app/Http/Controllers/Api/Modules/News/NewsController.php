<?php

namespace App\Http\Controllers\Api\Modules\News;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\News;
use Auth;
use DB;
use Validator;

class NewsController extends Controller
{
      public function storeNews(Request $request)
      {  

      	  \DB::beginTransaction();

      	  try{ 

      	  	    $validator = Validator::make($request->all(), [
                'title'        => 'required', 
                'description'     => 'required',  
                'image' => 'required|mimes:jpg,jpeg,png,bmp',
               

	            ]);

	            if ($validator->fails()) {
	                
	                return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $validator->errors()],config('global.failed_status'));
	            }


      	  	     $newsData = array();
                 
                 $user_id =Auth::guard('admins')->user()->id;

		         $newsData['user_id'] = $user_id;
		         $newsData['title'] = $request->title;
		         $newsData['description'] = $request->description;

		      	 $image = $request->image;
		      	 $filename = time() . '-' . rand(1000, 9999) . '.' . $image->getClientOriginalExtension();
		         $image->move("storage/app/public/news",$filename);
		         $newsData['image'] = $filename;
                 
                 // echo "<pre>";print_r($newsData);exit();

                 $response = News::create($newsData);

                 \DB::commit();

                 if($response)
                 {
		             return response()->json(['status'=>1,
		        		'message' =>config('global.sucess_msg'),
		        		'result' => $response],
		        		config('global.success_status'));
		         }
		         else{

		         	 return response()->json(['status'=>1,
		        		'message' =>'not inserted',
		        		'result' => []],
		        		config('global.success_status'));
		         }


            }catch(\Exception $e){

            	   \DB::rollback();

                   return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
          }

         
      }



      public function getAllNews()
      {  

      	  \DB::beginTransaction();

      	  try{ 


      	  	     $newsData = array();


                 $res = DB::table('news')->leftjoin('admins','news.user_id','admins.id')
                 ->select('news.*','admins.name')->get();
                  
                  foreach ($res as $key => $value) {
                  	  
                  	   $newsData[$key]['id'] = $value->id;
		               $newsData[$key]['title'] = $value->title;
		               $newsData[$key]['description'] = $value->description;
		               $image = $value->image;
		               $newsData[$key]['image'] = asset('storage/app/public/news/'.$image);
		               $newsData[$key]['name'] = $value->name;

		               if(Auth::guard('admins')->check())
		               {
		               	   $newsData[$key]['updated_at'] = $value->updated_at;
		                   $newsData[$key]['created_at'] = $value->created_at;
		               }
                  }
		         
                 
                 // echo "<pre>";print_r($newsData);exit();


                 \DB::commit();

                 if(!empty($newsData))
                 {
		             return response()->json(['status'=>1,
		        		'message' =>config('global.sucess_msg'),
		        		'result' => $newsData],
		        		config('global.success_status'));
		         }
		         else{

		         	 return response()->json(['status'=>1,
		        		'message' =>'not found',
		        		'result' => []],
		        		config('global.success_status'));
		         }


            }catch(\Exception $e){

            	   \DB::rollback();

                   return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
          }

         
      }



     public function getNewsById($id)
      {  

      	  \DB::beginTransaction();

      	  try{ 


      	  	     $newsData = array();


                 $res = DB::table('news')->leftjoin('admins','news.user_id','admins.id')
                 ->select('news.*','admins.name')->where('news.id',$id)->first();
                  
                  if($res)
                  {
                  	  
                  	   $newsData['id'] = $res->id;
		               $newsData['title'] = $res->title;
		               $newsData['description'] = $res->description;
		               $image = $res->image;
		               $newsData['image'] = asset('storage/app/public/news/'.$image);
		               $newsData['name'] = $res->name;
		           }
                  
		         else{

		         	  $newsData = [];
                 }
                 // echo "<pre>";print_r($newsData);exit();


                 \DB::commit();

                 
		             return response()->json(['status'=>1,
		        		'message' =>config('global.sucess_msg'),
		        		'result' => $newsData],
		        		config('global.success_status'));
		         
		         


            }catch(\Exception $e){

            	   \DB::rollback();

                   return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
          }

         
      }


      public function updateNews(Request $request)
      {  
      	 // echo "<pre>";print_r($request->all());exit();

      	  \DB::beginTransaction();

      	  try{ 

      	  	    $validator = Validator::make($request->all(), [
                'title'        => 'required', 
                'description'     => 'required',  
                'image' => 'required|mimes:jpg,jpeg,png,bmp',
               

	            ]);

	            if ($validator->fails()) {
	                
	                return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $validator->errors()],config('global.failed_status'));
	            }


      	  	     $newsData = array();
                 
                 $imagePrev = News::where('id',$request->news_id)->select('image')->first();
                 unlink(public_path('storage/app/public/news/'.$imagePrev->image));

		         $newsData['user_id'] = $request->user_id;
		         $newsData['title'] = $request->title;
		         $newsData['description'] = $request->description;

		      	 $image = $request->image;
		      	 $filename = time() . '-' . rand(1000, 9999) . '.' . $image->getClientOriginalExtension();
		         $image->move("storage/app/public/news",$filename);
		         $newsData['image'] = $filename;
                 
                 // echo "<pre>";print_r($imagePrev->image);exit();

                 $response = News::where('id',$request->news_id)->update($newsData);

                 \DB::commit();

                 if($response)
                 {
		             return response()->json(['status'=>1,
		        		'message' =>config('global.sucess_msg'),
		        		'result' => $response],
		        		config('global.success_status'));
		         }
		         else{

		         	 return response()->json(['status'=>1,
		        		'message' =>'not inserted',
		        		'result' => []],
		        		config('global.success_status'));
		         }


            }catch(\Exception $e){

            	   \DB::rollback();

                   return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
          }

         
      }



      public function deleteNews($id)
      {  

      	  \DB::beginTransaction();

      	  try{ 


      	  	     $newsData = array();


                 $task = News::findOrFail($id);
                 unlink(public_path('storage/app/public/news/'.$task->image));
                 $result = $task->delete();
                  
                  if($result)
                  {
                  	   $newsData = "News deleted";
		           }
                  
		         else{

		         	  $newsData = "News can not deleted";
                 }
                 // echo "<pre>";print_r($task->image);exit();


                 \DB::commit();

                 
		             return response()->json(['status'=>1,
		        		'message' =>config('global.sucess_msg'),
		        		'result' => $newsData],
		        		config('global.success_status'));
		         
		         


            }catch(\Exception $e){

            	   \DB::rollback();

                   return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
          }

         
      }
}
