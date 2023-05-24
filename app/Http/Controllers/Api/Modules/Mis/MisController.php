<?php

namespace App\Http\Controllers\Api\Modules\Mis;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use DB;


class MisController extends Controller
{
    public function missalesplanorders()
    {
    	$arr = array();
    	$variable = DB::table('quote_schedules')->leftjoin('quotes','quote_schedules.quote_id','quotes.id')->leftjoin('sub_categorys','quote_schedules.sub_cat_id','sub_categorys.id')
    	->select('quote_schedules.*','quotes.rfq_no','quotes.kam_status','sub_categorys.sub_cat_name')
    	->whereNull('quotes.deleted_at')->whereNull('quote_schedules.deleted_at')->latest()->get();
        
        
    	foreach ($variable as $key => $value) {
    		
    		 $arr[$key]['id'] = $value->id;
    		 $arr[$key]['pro_size'] = $value->pro_size;
    		 $arr[$key]['quantity'] = $value->quantity;
    		 $arr[$key]['kam_price'] = $value->kam_price;
    		 $arr[$key]['plant'] = $value->plant;
    		 $arr[$key]['location'] = $value->location;
    		 $arr[$key]['kam_status'] = $value->kam_status;
    		 $arr[$key]['sub_cat_name'] = $value->sub_cat_name;
    		 $arr[$key]['rfq_no'] = $value->rfq_no;
    		 $arr[$key]['date'] = date("d-m-Y", strtotime($value->created_at));
    	}

    	// echo "<pre>";print_r($arr);exit();
    	return response()->json(['status'=>1,
              'message' =>'success',
              'result' => $arr],
              config('global.success_status'));
    }


    public function misdownexcel() 
    {
    	// $array = $request->all();
        $ids = [160,158];
    	$variable = DB::table('quote_schedules')->leftjoin('quotes','quote_schedules.quote_id','quotes.id')->leftjoin('sub_categorys','quote_schedules.sub_cat_id','sub_categorys.id')
    	->select('quote_schedules.*','quotes.rfq_no','quotes.kam_status','sub_categorys.sub_cat_name')
    	->whereIn('quote_schedules.id',$ids)
    	->whereNull('quotes.deleted_at')->whereNull('quote_schedules.deleted_at')->latest()->get();
        
        
    	foreach ($variable as $key => $value) {
    		
    		 $arr[$key]['id'] = $value->id;
    		 $arr[$key]['pro_size'] = $value->pro_size;
    		 $arr[$key]['quantity'] = $value->quantity;
    		 $arr[$key]['kam_price'] = $value->kam_price;
    		 $arr[$key]['plant'] = $value->plant;
    		 $arr[$key]['location'] = $value->location;
    		 $arr[$key]['kam_status'] = $value->kam_status;
    		 $arr[$key]['sub_cat_name'] = $value->sub_cat_name;
    		 $arr[$key]['rfq_no'] = $value->rfq_no;
    		 $arr[$key]['date'] = date("d-m-Y", strtotime($value->created_at));
    	}

    	dd($arr);
        return Excel::download($arr, 'users.xlsx');
    }
}
