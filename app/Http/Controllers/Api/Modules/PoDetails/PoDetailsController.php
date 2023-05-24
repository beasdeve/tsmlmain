<?php

namespace App\Http\Controllers\Api\Modules\PoDetails;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Models\Quote;
use App\Models\Models\QuoteSchedule;
use App\Models\Models\ProductSubCategory;
use App\Models\Models\Quotedelivery;
use App\Models\Models\Requote;
use App\Models\Models\Order;
use App\Models\Models\Deleteremark;
use Validator;
use Auth;
use DB;
use \PDF;


class PoDetailsController extends Controller
{
	

  	public function downloadPoPdf($id)
    { 
      // dd($id);
        $quote = DB::table('orders')
           ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')
           ->leftjoin('users','quotes.user_id','users.id')
           ->leftjoin('products','quotes.product_id','products.id')
           ->leftjoin('categorys','quotes.cat_id','categorys.id')
           ->leftjoin('sub_categorys','categorys.id','sub_categorys.cat_id')
           ->select('quotes.rfq_no','quotes.user_id','quotes.id as qid','products.slug','products.pro_name as product_name','products.status','categorys.*','sub_categorys.*','users.id','users.name as uname','products.id as pid','categorys.id as cid','quotes.quantity','orders.letterhead','orders.po_no','orders.po_date','orders.status as po_st','orders.amdnt_no')
           ->orderBy('quotes.updated_at','desc')
           ->where('orders.po_no',$id)
           ->whereNull('quotes.deleted_at')
           ->get()->toArray();
           // echo "<pre>";print_r($quote);exit();
        foreach ($quote as $key => $value) 
        {
            
            $result[$key]['C'] = $value->C;
            $result[$key]['Cr'] = $value->Cr;
            $result[$key]['Phos'] = $value->Phos;
            $result[$key]['S'] = $value->S;
            $result[$key]['Si'] = $value->Si;
            $result[$key]['cat_dese'] = $value->cat_dese;
            $result[$key]['cat_id'] = $value->cid;
            $result[$key]['cat_name'] = $value->cat_name;
            $result[$key]['image_2_url'] = $value->image_2;
            $result[$key]['image_3_url'] = $value->image_3;
            $result[$key]['image_4_url'] = $value->image_4;
            $result[$key]['is_populer'] = $value->is_populer;
            $result[$key]['product_id'] = $value->pid;
            $result[$key]['sizes'] = $value->pro_size;
            $result[$key]['slug'] = $value->slug;
            $result[$key]['product_name'] = $value->product_name;
            $result[$key]['status'] = $value->status;
            $result[$key]['po_st'] = $value->po_st;
            $result[$key]['amdnt_no'] = $value->amdnt_no;
            $result[$key]['primary_image_url'] = asset('storage/app/public/images/product/'.$value->primary_image);
            $result[$key]['quote_id'] = $value->qid;
            $result[$key]['user_id'] = $value->user_id;
            $result[$key]['rfq_no'] = $value->rfq_no;
            $result[$key]['quantity'] = $value->quantity;
            $result[$key]['po_no'] = $value->po_no;
            $result[$key]['letterhead'] = asset('storage/app/public/images/letterheads/'.$value->letterhead);
            $date =  date_create($value->po_date);
            $po_dt = date_format($date,"d-m-Y");
            $result[$key]['po_date'] = $po_dt;
            $result[$key]['schedule'] = $this->getPoSchedules($value->qid); 
            
        }
       // dd($result);
        
        $newArr  = $this->createPoPdfArr($result);
        // dd($newArr);
        // dd($newArr);
        $getsum = 0;
        foreach ($newArr as $key => $value) 
        {
        	 
        	$getsum+=$value['kam_price'];
        }

        $data['product_name'] = $quote[0]->product_name;
        $data['total_price'] = $getsum;
        $data['po_no'] = $id;
    	  $data['po_date'] = $po_dt;
    	  $data['user_name'] = $quote[0]->uname;
        // dd($newArr,$data);
        $pdf = PDF::loadView('user.po_sales_download',['result'=>$newArr,'data'=>$data]);
    
    	return $pdf->download('po_sales_report.pdf');
           
   	}
    /**
     * This is get po details list.
     *
     * @param  Http\Controllers\Api\Modules\Freight  $product
     * @return \Illuminate\Http\Response
    */
	public function getPoDetails(Request $request)
	{
		\DB::beginTransaction();

      	try{
      		
      		$quote = DB::table('orders')
           ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')
           ->leftjoin('products','quotes.product_id','products.id')
           ->leftjoin('categorys','quotes.cat_id','categorys.id')
           ->leftjoin('quote_schedules','quotes.id','quote_schedules.quote_id')
           ->leftjoin('users','quotes.user_id','users.id')    
           ->select('quotes.rfq_no','quotes.user_id','quotes.created_at','orders.letterhead','products.pro_name as product_title', 'categorys.cat_name as category_name','orders.po_no','orders.po_date','users.name','orders.status',DB::raw("(sum(quotes.quantity)) as tot_qt"),'orders.amdnt_no')
           ->orderBy('quotes.updated_at','desc')
           ->groupBy('quotes.rfq_no');

           //-------------------------------//
           if(!empty($request->po_no))
           {
              $quote = $quote->where('orders.po_no',$request->po_no);
           }
           if(!empty($request->rfq_no))
           {
              $quote = $quote->where('quotes.rfq_no',$request->rfq_no);
           }
           if(!empty($request->customer_name))
           {
           		$quote = $quote->where('users.name','LIKE',"%{$request->customer_name}%"); 
           }
           if(!empty($request->categorys))
           {
           		$quote = $quote->where('categorys.cat_name','LIKE',"%{$request->categorys}%"); 
           }

           // --------------------------------//
           if(!empty($request->from_date && $request->to_date))
           {
           		$fromdate = date('Y-m-d',strtotime($request->from_date));
           		$todate = date('Y-m-d',strtotime($request->to_date));  
           		$quote = $quote->where('orders.po_date','>=', $fromdate)
           		->where('orders.po_date','<=', $todate);
              	 
           }

           if(!empty($request->from_date && $request->to_date && $request->po_no))
           {
           		$fromdate = date('Y-m-d',strtotime($request->from_date));
           		$todate = date('Y-m-d',strtotime($request->to_date));  
           		$quote = $quote->where('orders.po_date','>=', $fromdate)
           		->where('orders.po_date','<=', $todate)
           		->where('orders.po_no',$request->po_no);
              	 
           }

           if(!empty($request->from_date && $request->to_date && $request->customer_name))
           	{
           		$fromdate = date('Y-m-d',strtotime($request->from_date));
           		$todate = date('Y-m-d',strtotime($request->to_date));  
           		$quote = $quote->where('orders.po_date','>=', $fromdate)
           		->where('orders.po_date','<=', $todate)
           		->where('users.name','LIKE',"%{$request->customer_name}%"); 
           	}

           if(!empty($request->from_date && $request->to_date && $request->rfq_no))
           {
           		$fromdate = date('Y-m-d',strtotime($request->from_date));
           		$todate = date('Y-m-d',strtotime($request->to_date));  
           		$quote = $quote->where('orders.po_date','>=', $fromdate)
           		->where('orders.po_date','<=', $todate)
           		->where('orders.rfq_no',$request->rfq_no);
              	 
           } 

           if(!empty($request->from_date && $request->to_date && $request->categorys))
           	{
           		$fromdate = date('Y-m-d',strtotime($request->from_date));
           		$todate = date('Y-m-d',strtotime($request->to_date));  
           		$quote = $quote->where('orders.po_date','>=', $fromdate)
           		->where('orders.po_date','<=', $todate)
           		->where('categorys.cat_name','LIKE',"%{$request->categorys}%");
              	 
           	}

           	//-------------------------//

           	if(!empty($request->from_date && $request->to_date && $request->po_no && $request->customer_name))
           	{
           		$fromdate = date('Y-m-d',strtotime($request->from_date));
           		$todate = date('Y-m-d',strtotime($request->to_date));  
           		$quote = $quote->where('orders.po_date','>=', $fromdate)
           		->where('orders.po_date','<=', $todate)
           		->where('orders.po_no',$request->po_no)
           		->where('users.name','LIKE',"%{$request->customer_name}%"); 
           	}

           	if(!empty($request->from_date && $request->to_date && $request->po_no && $request->rfq_no))
           	{
           		$fromdate = date('Y-m-d',strtotime($request->from_date));
           		$todate = date('Y-m-d',strtotime($request->to_date));  
           		$quote = $quote->where('orders.po_date','>=', $fromdate)
           		->where('orders.po_date','<=', $todate)
           		->where('orders.po_no',$request->po_no)
           		->where('orders.rfq_no',$request->rfq_no); 
           	}

           	if(!empty($request->from_date && $request->to_date && $request->po_no && $request->categorys))
           	{
           		$fromdate = date('Y-m-d',strtotime($request->from_date));
           		$todate = date('Y-m-d',strtotime($request->to_date));  
           		$quote = $quote->where('orders.po_date','>=', $fromdate)
           		->where('orders.po_date','<=', $todate)
           		->where('orders.po_no',$request->po_no)
           		->where('categorys.cat_name','LIKE',"%{$request->categorys}%"); 
           	}

           	//---------------------------------//

           	if(!empty($request->from_date && $request->to_date && $request->po_no && $request->customer_name && $request->rfq_no))
           	{
           		$fromdate = date('Y-m-d',strtotime($request->from_date));
           		$todate = date('Y-m-d',strtotime($request->to_date));  
           		$quote = $quote->where('orders.po_date','>=', $fromdate)
           		->where('orders.po_date','<=', $todate)
           		->where('orders.po_no',$request->po_no)
           		->where('users.name','LIKE',"%{$request->customer_name}%")
           		->where('orders.rfq_no',$request->rfq_no); 
           	}

           	if(!empty($request->from_date && $request->to_date && $request->po_no && $request->customer_name && $request->categorys))
           	{
           		$fromdate = date('Y-m-d',strtotime($request->from_date));
           		$todate = date('Y-m-d',strtotime($request->to_date));  
           		$quote = $quote->where('orders.po_date','>=', $fromdate)
           		->where('orders.po_date','<=', $todate)
           		->where('orders.po_no',$request->po_no)
           		->where('users.name','LIKE',"%{$request->customer_name}%")
           		->where('categorys.cat_name','LIKE',"%{$request->categorys}%"); 
           	}

           	//-----------------------------//

           	if(!empty($request->from_date && $request->to_date && $request->po_no && $request->customer_name && $request->rfq_no && $request->categorys))
           	{
           		$fromdate = date('Y-m-d',strtotime($request->from_date));
           		$todate = date('Y-m-d',strtotime($request->to_date));  
           		$quote = $quote->where('orders.po_date','>=', $fromdate)
           		->where('orders.po_date','<=', $todate)
           		->where('orders.po_no',$request->po_no)
           		->where('users.name','LIKE',"%{$request->customer_name}%")
           		->where('orders.rfq_no',$request->rfq_no)
           		->where('categorys.cat_name','LIKE',"%{$request->categorys}%"); 
           	}

           $quote = $quote->whereNull('quotes.deleted_at')
           ->get()->toArray();
            
           
           
           // echo "<pre>";print_r($quote);exit();

          if(!empty($quote))
          	{
	          foreach ($quote as $key => $value) 
	          {

	            
	            $result[$key]['po_no'] = $value->po_no;
	            $result[$key]['amdnt_no'] = $value->amdnt_no;
	            $date =  date_create($value->po_date);
	            $po_dt = date_format($date,"d/m/Y");
	            $result[$key]['po_date'] = $po_dt;
	            $result[$key]['user'] = $value->name;
	            $result[$key]['rfq_no'] = $value->rfq_no;
	            $rfqdate =  date_create($value->created_at);
	            $result[$key]['rfq_date'] = date_format($rfqdate,"d/m/Y"); 
	            $result[$key]['product_title'] = $value->product_title;
	            $result[$key]['category_name'] = $value->category_name;
	            $result[$key]['po_quantity'] = $value->tot_qt; 

	          }
	        }
	        
            \DB::commit();

            if(!empty($result))
            {
	            return response()->json(['status'=>1,'message' =>config('global.sucess_msg'),
	            	'result' => $result],config('global.success_status'));
	        }
	        else{ 
	         	 return response()->json(['status'=>1,'message' =>'No data found','result' => []],
	        		config('global.success_status'));
	        }


       	}catch(\Exception $e){ 
        	\DB::rollback(); 
            return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
      	}
	}

	public function getPoDetailsId($id)
      {
       \DB::beginTransaction();

       try{ 


           $quote = DB::table('orders')
           ->leftjoin('quotes','orders.rfq_no','quotes.rfq_no')
           ->leftjoin('users','quotes.user_id','users.id')
           ->leftjoin('products','quotes.product_id','products.id')
           ->leftjoin('categorys','quotes.cat_id','categorys.id')
           ->leftjoin('sub_categorys','categorys.id','sub_categorys.cat_id')
           ->select('quotes.rfq_no','quotes.user_id','quotes.id as qid','products.slug','products.pro_name as product_name','products.status','categorys.*','sub_categorys.*','users.id','users.name as uname','products.id as pid','categorys.id as cid','quotes.quantity','orders.letterhead','orders.po_no','orders.po_date','orders.status as po_st','orders.amdnt_no')
           ->orderBy('quotes.updated_at','desc')
           ->where('orders.po_no',$id)
           ->whereNull('quotes.deleted_at')
           ->get()->toArray();
           // echo "<pre>";print_r($quote);exit();
        foreach ($quote as $key => $value) 
        {
            
            $result[$key]['C'] = $value->C;
            $result[$key]['Cr'] = $value->Cr;
            $result[$key]['Phos'] = $value->Phos;
            $result[$key]['S'] = $value->S;
            $result[$key]['Si'] = $value->Si;
            $result[$key]['cat_dese'] = $value->cat_dese;
            $result[$key]['cat_id'] = $value->cid;
            $result[$key]['cat_name'] = $value->cat_name;
            $result[$key]['image_2_url'] = $value->image_2;
            $result[$key]['image_3_url'] = $value->image_3;
            $result[$key]['image_4_url'] = $value->image_4;
            $result[$key]['is_populer'] = $value->is_populer;
            $result[$key]['product_id'] = $value->pid;
            $result[$key]['sizes'] = $value->pro_size;
            $result[$key]['slug'] = $value->slug;
            $result[$key]['product_name'] = $value->product_name;
            $result[$key]['status'] = $value->status;
            $result[$key]['po_st'] = $value->po_st;
            $result[$key]['amdnt_no'] = $value->amdnt_no;
            $result[$key]['primary_image_url'] = asset('storage/app/public/images/product/'.$value->primary_image);
            $result[$key]['quote_id'] = $value->qid;
            $result[$key]['user_id'] = $value->user_id;
            $result[$key]['rfq_no'] = $value->rfq_no;
            $result[$key]['quantity'] = $value->quantity;
            $result[$key]['po_no'] = $value->po_no;
            $result[$key]['letterhead'] = asset('storage/app/public/images/letterheads/'.$value->letterhead);
            $date =  date_create($value->po_date);
            $po_dt = date_format($date,"d-m-Y");
            $result[$key]['po_date'] = $po_dt;
            $result[$key]['schedule'] = $this->getPoSchedules($value->qid); 
            
        }
        // dd($result);
        
        $newArr  = $this->createPoPdfArr($result);
        // dd($newArr);
        // dd($newArr);
        $getsum = 0;
        foreach ($newArr as $key => $value) 
        {
           
          $getsum+=$value['kam_price'];
        }

        
        $datas['total_price'] = $getsum;
        $datas['po_no'] = $id;
        $datas['po_date'] = $po_dt;
        $datas['customer_name'] = $quote[0]->uname;





              // echo "<pre>";print_r($result);exit();
          \DB::commit();
          if(!empty($newArr))
          {
            return response()->json(['status'=>1,'message' =>'success','result' => $newArr,'data' => $datas],config('global.success_status'));
          }
          else{

           return response()->json(['status'=>1,'message' =>'success','result' => 'PO not found'],config('global.success_status'));

         }
       


     }catch(\Exception $e){

       \DB::rollback();

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }
   	}


   	public function getPoSchedules($qid)
      {
          $quote_sches = array();

          $res = DB::table('quote_schedules')->where('quote_id',$qid)->where('quote_status',1)->whereNull('deleted_at')->get();

          foreach ($res as $key => $value) {
             
             $quote_sches[$key]['id'] = $value->id;
             $quote_sches[$key]['schedule_no'] = $value->schedule_no;
             $quote_sches[$key]['quantity'] = $value->quantity;
             $quote_sches[$key]['pro_size'] = $value->pro_size;
             $quote_sches[$key]['to_date'] = $value->to_date;
             $quote_sches[$key]['from_date'] = $value->from_date;
             $quote_sches[$key]['kam_price'] = $value->kam_price;
             $quote_sches[$key]['expected_price'] = $value->expected_price;
             $quote_sches[$key]['plant'] = $value->plant;
             $quote_sches[$key]['location'] = $value->location;
             $quote_sches[$key]['bill_to'] = $value->bill_to;
             $quote_sches[$key]['ship_to'] = $value->ship_to;
             $quote_sches[$key]['remarks'] = $value->remarks;
             $quote_sches[$key]['kamsRemarks'] = $value->kamsRemarks;
             $quote_sches[$key]['delivery'] = $value->delivery;
             $quote_sches[$key]['valid_till'] = $value->valid_till;
             $quote_sches[$key]['quote_status'] = $value->quote_status;
             $quote_sches[$key]['confirm_date'] = $value->confirm_date;
             $quote_sches[$key]['pay_term'] = $value->pay_term; 

          }

          return $quote_sches;
      }



      public function createPoPdfArr($result)
      {
      		 
          $newArr = array();
          $arra = array();
          foreach ($result as $key => $value) {
              	
                $product = $value['product_name'];
                $cat = $value['cat_name'];
                foreach ($value['schedule'] as $k => $v) {
                    
                    $newArr['product_name'] = $product;
                    $newArr['cat_name'] = $cat;
                    $newArr['pro_size'] = $v['pro_size'];
                    $newArr['qty'] = $v['quantity'];
                    $newArr['ship_to'] = $v['ship_to']; 
                    $newArr['kam_price'] = $v['kam_price'];
                    $date =  date_create($v['confirm_date']);
                    $newArr['tentative_delivey_date'] = date_format($date,"d-m-Y");
                    //$newArr['tentative_delivey_date'] = date(format)$v['confirm_date'];
                    // $newArr['from_dt'] = $v['from_date']; 

                    array_push($arra,$newArr);
                }

                
          }
          // echo "<pre>";print_r($newArr);exit();
          return $arra;
      }
}
