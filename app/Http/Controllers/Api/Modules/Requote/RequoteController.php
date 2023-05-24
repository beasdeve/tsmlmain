<?php

namespace App\Http\Controllers\Api\Modules\Requote;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Models\RequoteCount;
use App\Models\Models\ScTransaction;
use App\Models\Models\Smremark;
use App\Models\Models\Order;
use DB;
use Validator;
use Nullix\CryptoJsAes\CryptoJsAes;

class RequoteController extends Controller
{
	    public function updateCountRequote(Request $request)
	    {

	    	  try{ 
                   // echo "<pre>";print_r($request->all());exit();
	    	  	   foreach ($request->all() as $key => $value) {
	    	  	   
                     $count = RequoteCount::where('sche_no',$value['sche_no'])->get()->toArray();
                     // echo "<pre>";print_r($count);exit();
	                 if(!empty($count))
	                 {
	                 	 $countRfq = RequoteCount::where('sche_no',$value['sche_no'])->first()->toArray();

	                 	 $newcount = $countRfq['counts'] + $value['counts'];
	                 	 // echo "<pre>";print_r($newcount);exit();

	                 	 RequoteCount::where('sche_no',$value['sche_no'])->update(['counts' => $newcount]);


	                 }else{

	                 	 $data['sche_no'] = $value['sche_no'];
	                 	 $data['counts'] = $value['counts'];
	                 	 $data['status'] = 1;

	                 	 RequoteCount::create($data);
	                 }
	             }


			    	 
			        return response()->json(['status'=>1,
			          'message' =>'success',
			          'result' => 'Requote count updated'],
			          config('global.success_status'));


	      }catch(\Exception $e){

	       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
	     }

	    	 
	    }


  // ----------------------------- get requote counts --------------------------------------------

	   public function getCountRequote($rfq_no)
	    {

	    	  try{ 
                   
                 	 $countRfq = RequoteCount::where('sche_no',$rfq_no)->first();
                     
                     if(!empty($countRfq))
                     {

                 	   $newcount = $countRfq->counts;
                     }
                     else{

                     	$newcount = 0;
                     }
                 	 // echo "<pre>";print_r($newcount);exit();
			    	 
			        return response()->json(['status'=>1,
			          'message' =>'success',
			          'result' => $newcount],
			          config('global.success_status'));


	      }catch(\Exception $e){

	       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
	     }

	    	 
	    }

	 // ---------------------------------------------------------------------------


   /*
      ----------------  quote schedule list -------------------

  */

      public function getCountSche($id)
      {

       \DB::beginTransaction();

       try{ 

          $result = 0;
          $quoteArr = array();

          $quote_ids = DB::table('quotes')->where('rfq_no',$id)->whereNull('deleted_at')
          ->select('id','user_id')->get();
          // echo "<pre>";print_r($quote_ids);exit();
          foreach ($quote_ids as $key => $value) {
           
           array_push($quoteArr,$value->id);
 
         }
         

         $quote = DB::table('quote_schedules')->whereIn('quote_id',$quoteArr)->get();
   
         // echo "<pre>";print_r($quote);exit();

         foreach ($quote as $key => $value) {
           
           if($value->quote_status != 3)
           {

             $result ++;
           }
          
        }

         $data['total'] = count($quote);
         $data['aac_rej'] = $result;
              // echo "<pre>";print_r($result);exit();
        \DB::commit();

          return response()->json(['status'=>1,'message' =>'success','result' => $data],config('global.success_status'));


   }catch(\Exception $e){

     \DB::rollback();

     return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
   }
 }



      public function priceBreakSave(Request $request)
      {

          try{ 

              $data = array();
                   // echo "<pre>";print_r($request->all());exit();
               foreach ($request->all() as $key => $value) {
                  
                  // echo "<pre>";print_r($value['plant']);exit();
                  $res = ScTransaction::where('rfq_no',$value['rfq_no'])->where('schedule',$value['schedule'])->get();
                  if(!empty($res))
                  {
                      ScTransaction::where('rfq_no',$value['rfq_no'])->where('schedule',$value['schedule'])->delete();
                  }

              $plant_key = DB::table('plants')->where('id',$value['plant'])->first();
                // dd($plant_key->type_2);

              if($plant_key->type_2 == "O")
              {
                   $plant_type =  "O";
              }
              else{

                    $plant_type =  "F";
                // dd('hi');
              }

             // dd($plant_type);

                  $sub_cat = DB::table('sub_categorys')->where('id',$value['sub_cat_id'])->first();

              $newSub = DB::table('sub_categorys')->where('sub_cat_name',$sub_cat->sub_cat_name)->where('plant_code',$plant_type)->first();
              
                  $mat_code = DB::table('product_size_mat_no')
                  ->where('sub_cat_id',$newSub->id)->where('product_size',$value['size'])->where('plant_type',$plant_type)->first();
                   // dd($mat_code->mat_no);
                    foreach ($value['components'] as $k => $v) {
                        
                          $data['code'] = $v['comp'];
                          $data['value'] = $v['value'];
                          $data['mat_code'] = $mat_code->mat_no;
                          $data['plant'] = $value['plant'];
                          $data['schedule'] = $value['schedule'];
                          $data['rfq_no'] = $value['rfq_no'];

                          ScTransaction::create($data);

                    }



               }


             
              return response()->json(['status'=>1,
                'message' =>'success',
                'result' => 'Requote count updated'],
                config('global.success_status'));


        }catch(\Exception $e){

         return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
       }

         
      }


      // ----------------------------- get requote counts -------------------------

     public function getPriceComp()
      {

          try{ 
                   
               $res = DB::table('price_masters')->get();

                   // echo "<pre>";print_r($newcount);exit();
             
              return response()->json(['status'=>1,
                'message' =>'success',
                'result' => $res],
                config('global.success_status'));


        }catch(\Exception $e){

         return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
       }

         
      }

   // ---------------------------------------------------------------------------


 // ----------------------------- get price break -------------------------

     public function getPriceBreak(Request $request)
      {

          try{ 

                $encrypted = json_encode($request->all());
                // $json = json_encode($encrypted1);
                $password = "123456";

                $decrypted = CryptoJsAes::decrypt($encrypted, $password);
                // dd($decrypted);
                   
               // $rfq_no = $request->input('rfq_no');
               // $sche_no = $request->input('sche_no');

                $rfq_no = $decrypted['rfq_no'];
                $sche_no = $decrypted['sche_no'];
               
               $res = ScTransaction::where('rfq_no',$rfq_no)->where('schedule',$sche_no)
               ->select('code','value')->get();
                   // echo "<pre>";print_r($newcount);exit();
              $password = "123456";
              $encrypt = CryptoJsAes::encrypt($res, $password);

              return response()->json(['status'=>1,
                'message' =>'success',
                'result' => $encrypt],
                config('global.success_status'));


        }catch(\Exception $e){

         return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
       }

         
      }

   // ---------------------------------------------------------------------------
   

    // ----------------------------- sm remark save -------------------------

     public function smRemarkSave(Request $request)
      {

          try{ 
               
               $validation = \Validator::make($request->all(),[ 
                    "remarks" => "required",
                    
              ],[ 
                'remarks.required'=>'Remarks is required.',
                    
              ]);

               if ($validation->fails()) {
                  return response()->json(['status'=>0,'errors'=>$validation->errors()],200);
              }


               $user_id = $request->input('user_id');
               $type = $request->input('type');
               $rfq_no = $request->input('rfq_no');
               $remarks = $request->input('remarks');
               
               $res = Smremark::where('rfq_no',$rfq_no)->get();
               // if(!empty($res))
               // {
               //     Smremark::where('rfq_no',$rfq_no)->delete();
               // }

               $arr['user_id'] = $user_id;
               $arr['type'] = $type;
               $arr['rfq_no'] = $rfq_no;
               $arr['remarks'] = $remarks;


                   // echo "<pre>";print_r($arr);exit();
               Smremark::create($arr);
             
              return response()->json(['status'=>1,
                'message' =>'success',
                'result' => 'Remarks updated'],
                config('global.success_status'));


        }catch(\Exception $e){

         return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
       }

         
      }

   // ---------------------------------------------------------------------------

  // ----------------------------- get sm remark -------------------------

     public function smRemarkById($id)
      {

          try{ 
               
              
               $res = Smremark::where('rfq_no',$id)->orderBy('id','desc')->first();
               // if(!empty($res))
               // {
               //     Smremark::where('rfq_no',$rfq_no)->delete();
               // }
              
              if(!empty($res))
              {

                 $arr['user_id'] = $res->user_id;
                 $arr['type'] = $res->type;
                 $arr['rfq_no'] = $res->rfq_no;
                 $arr['remarks'] = $res->remarks;
               }else{

                  $arr = [];
               }
              


                   // echo "<pre>";print_r($arr);exit();
               // Smremark::create($arr);
             
              return response()->json(['status'=>1,
                'message' =>'success',
                'result' => $arr],
                config('global.success_status'));


        }catch(\Exception $e){

         return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
       }

         
      }

   // ---------------------------------------------------------------------------

    // ----------------------------- get sm amend po -------------------------

     public function smAmendPo()
      {

          try{ 
               
              
               $quote = DB::table('orders')
                 ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')
                 ->leftjoin('quote_schedules','quotes.id','quote_schedules.quote_id')
                 ->leftjoin('users','quotes.user_id','users.id')
                 ->select('quotes.rfq_no','quotes.user_id','orders.letterhead','orders.po_no','orders.po_date','users.name','orders.status',DB::raw("(sum(quote_schedules.quantity)) as tot_qt"),'orders.amdnt_no','orders.cus_po_no')
                 ->orderBy('quotes.updated_at','desc')
                 ->whereNotNull('orders.amdnt_no')
                 ->groupBy('quotes.rfq_no');
                 $quote = $quote->whereNull('quotes.deleted_at')->where('quote_schedules.quote_status',1)
                 ->get()->toArray();
                 // echo "<pre>";print_r($quote);exit();

                if(!empty($quote))
                {
                foreach ($quote as $key => $value) {

                  $result[$key]['po_no'] = $value->po_no;
                  $result[$key]['cus_po_no'] = $value->cus_po_no;
                  $result[$key]['user'] = $value->name;
                  $result[$key]['rfq_no'] = $value->rfq_no;
                  $result[$key]['quantity'] = $value->tot_qt;
                  $result[$key]['amdnt_no'] = $value->amdnt_no;
                  $date =  date_create($value->po_date);
                  $po_dt = date_format($date,"d/m/Y");
                  $result[$key]['po_date'] = $po_dt;
                  $result[$key]['status'] = $value->status;
                  

                }
              }
              else{
                $result = [];
              }

                   // echo "<pre>";print_r($arr);exit();
               // Smremark::create($arr);
             
              return response()->json(['status'=>1,
                'message' =>'success',
                'result' => $result],
                config('global.success_status'));


        }catch(\Exception $e){

         return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
       }

         
      }

   // ---------------------------------------------------------------------------


}
