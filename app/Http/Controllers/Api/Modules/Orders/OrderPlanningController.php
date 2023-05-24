<?php

namespace App\Http\Controllers\Api\Modules\Orders;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Models\Monthlyproductionplan;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Reader\Exception;
use PhpOffice\PhpSpreadsheet\Writer\Xls;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Reader\Csv;
use Tymon\JWTAuth\Exceptions\JWTException;
use Response;
use App\Models\Models\DailyProduction;
use App\Models\Models\Category;
use App\Models\Models\Product;
use App\Models\Models\Dispatchplan;
use DB;

class OrderPlanningController extends Controller
{
    public function monthlyPlanSubmit(Request $request)
    {
       // echo "<pre>";print_r($request->all());exit();

      try{ 
                $excel = $request->excel;

                if($excel)
                {
                    $date = $request->input('date');

                    $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
                    $spreadsheet = $reader->load($request->excel);
                    $sheetData = $spreadsheet->getActiveSheet()->toArray();
                    // return $sheetData;
                    $removed = array_shift($sheetData);
                    $data = json_encode($sheetData);

                    foreach($sheetData as $k => $val)
                    {
                       
                        $res = Monthlyproductionplan::where('start_date',date("Y-m-d", strtotime($date)))->where('plant',$val[0])->where('cat_id',$val[1])->where('sub_cat_id',$val[2])->where('size',$val[3])->get()->toArray();

                         // return $res;

                         $user = array();
      
                            
                            

                         if(empty($res))   
                         {
                            $user['start_date'] = date("Y-m-d", strtotime($date));
                            $user['end_date'] = "";
                            $user['plant'] = $val[0];
                            $user['cat_id'] = $val[1];
                            $user['sub_cat_id'] = $val[2];
                            $user['size'] = $val[3];
                            $user['open_stk'] = $val[4];
                            $user['mnthly_prod'] = $val[5];
                            $user['export'] = $val[6];
                            $user['offline'] = $val[7];
                            $user['sap_order'] = $val[8];
                            $user['status'] = 2;

                            
                            Monthlyproductionplan::create($user);
                       }
                       else{
                                

                                $user['open_stk'] = $val[4];
                            $user['mnthly_prod'] = $val[5];
                            $user['export'] = $val[6];
                            $user['offline'] = $val[7];
                            $user['sap_order'] = $val[8];
                                

                              Monthlyproductionplan::where('start_date',date("Y-m-d", strtotime($date)))->where('plant',$val[0])->where('cat_id',$val[1])->where('sub_cat_id',$val[2])->where('size',$val[3])->update($user);
                       }
                    }
            }else{

             
                $data = $request->all();
                $data['start_date'] = date("Y-m-d", strtotime($data['start_date']));
                $data['end_date'] = date("Y-m-d", strtotime($data['end_date']));
                $data['status'] = 0;

                $res = Monthlyproductionplan::create($data);
            }

            return response()->json(['status'=>1,
              'message' =>'success',
              'result' => 'Production plan created'],
              config('global.success_status'));
       


      }catch(\Exception $e){

       return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
     }
    }

         public function prodQtyUpload(Request $request)
        {
           // return $request->all();exit;
            $response = [];
            try{

              $start = $request->input('start');
              $end = '';
              // $fg_sap = $request->input('fg_sap');
            
                $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
                $spreadsheet = $reader->load($request->excel);
                $sheetData = $spreadsheet->getActiveSheet()->toArray();
                // return $sheetData;
                $removed = array_shift($sheetData);
                $data = json_encode($sheetData);

                foreach($sheetData as $k => $val)
                {
                   $res = DailyProduction::where('plant',$val[0])->where('category',$val[1])->where('subcategory',$val[2])->where('size',$val[6])->get()->toArray();
                    // return $res;exit();
                     if(empty($res))
                     {

                        // return $val[0];
                        $user = array();
  
                        
                        $user['plant'] = $val[0];
                        $user['category'] = $val[1];
                        $user['subcategory'] = $val[2];
                        $user['met_group'] = $val[3];
                        $user['met_no'] = $val[4];
                        $user['grade_code'] = $val[5];
                        $user['size'] = $val[6];
                        $user['met_desc'] = $val[7];
                        $user['start'] = date("Y-m-d", strtotime($start));
                        $user['end'] = '';
                        $user['qty'] = $val[8];
                        $user['fg_sap'] = $val[9];

                        
                        DailyProduction::create($user);
                    }
                    else{

                        $user = array();

                        $user['qty'] = $val[8];
                        $user['fg_sap'] = $val[9];

                        
                        DailyProduction::where('plant',$val[0])->where('category',$val[1])->where('subcategory',$val[2])->where('size',$val[6])->update($user);
                    }
              
                }

                $response['success'] = true;
                $response['message'] = 'Daily Production Uploaded Successfully';
                return Response::json($response);

             
            
            }catch(\Exception $e){
                $response['error'] = $e->getMessage();
                return Response::json($response);
            }
        }

         public function prodQtyUploadAdmin(Request $request)
        {
           // return $request->all();exit;
            $response = [];
            try{

              $start = $request->input('start');
              $end = $request->input('end');
              // $fg_sap = $request->input('fg_sap');
            
                $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
                $spreadsheet = $reader->load($request->excel);
                $sheetData = $spreadsheet->getActiveSheet()->toArray();
                // return $sheetData;
                $removed = array_shift($sheetData);
                $data = json_encode($sheetData);

                foreach($sheetData as $k => $val)
                {
                   
                    // return $val[7];
                        $user = array();
  
                        
                        $user['plant'] = $val[0];
                        $user['category'] = $val[1];
                        $user['subcategory'] = $val[2];
                        $user['met_group'] = $val[3];
                        $user['met_no'] = $val[4];
                        $user['grade_code'] = $val[5];
                        $user['size'] = $val[6];
                        $user['met_desc'] = $val[7];
                        $user['start'] = date("Y-m-d", strtotime($start));
                        $user['end'] = date("Y-m-d", strtotime($end));
                        $user['qty'] = $val[8];
                        $user['fg_sap'] = $val[9];

                        
                        DailyProduction::create($user);
              
                }

                $response['success'] = true;
                $response['message'] = 'Daily Production Uploaded Successfully';
                return Response::json($response);

             
            
            }catch(\Exception $e){
                $response['error'] = $e->getMessage();
                return Response::json($response);
            }
        }


       public function getOrderPlanning(Request $request)
       {
           try{ 

               $start_date = (!empty($request->input('start_date'))) ? $request->input('start_date') : '';
               $end_date = (!empty($request->input('end_date'))) ? $request->input('end_date') : '';
               $plant = (!empty($request->input('plant'))) ? $request->input('plant') : '';
               $mat_grp = (!empty($request->input('mat_grp'))) ? $request->input('mat_grp') : '';
               $mat_no = (!empty($request->input('mat_no'))) ? $request->input('mat_no') : '';
               $grade = (!empty($request->input('grade'))) ? $request->input('grade') : '';
               

               // echo "<pre>";print_r($start_date);exit();

               $result = array();

               $res = DB::table('monthly_production_plans')
                ->leftJoin('daily_productions', function($join)
                         {
                             $join->on('monthly_production_plans.plant', '=', 'daily_productions.plant');
                             // $join->on('monthly_production_plans.start_date','=','daily_productions.start');
                             // $join->on('monthly_production_plans.end_date','daily_productions.end');
                             $join->on('monthly_production_plans.size','daily_productions.size');
                             $join->on('monthly_production_plans.cat_id','daily_productions.category');
                             $join->on('monthly_production_plans.sub_cat_id','daily_productions.subcategory');
                         })
               ->select('monthly_production_plans.open_stk','monthly_production_plans.plant as mplant','monthly_production_plans.cat_id as mcat','monthly_production_plans.size as msize','monthly_production_plans.sub_cat_id as msubcat','monthly_production_plans.mnthly_prod','daily_productions.*','monthly_production_plans.export','monthly_production_plans.offline','monthly_production_plans.sap_order','monthly_production_plans.fg_sap as msap','monthly_production_plans.id as mnt_id','monthly_production_plans.start_date','monthly_production_plans.end_date','monthly_production_plans.size');

               if(!empty($start_date))
               {
                  $st_dt = date('Y-m-d',strtotime($start_date));
                  

                  // return $st_dt;
                 $res = $res->whereDate('monthly_production_plans.start_date','=',$st_dt)
                 // ->whereDate('monthly_production_plans.end_date','<=',$e_dt)
                 ->whereDate('daily_productions.start','=',$st_dt)
                 // ->whereDate('daily_productions.end','<=',$e_dt)
                 ;
               }
               if(!empty($plant))
               {
                       $res = $res->where('monthly_production_plans.plant',$plant);
               } 
               if(!empty($mat_grp))
               {
                       $res = $res->where('daily_productions.met_group',$mat_grp);
               }
               if(!empty($mat_no))
               {
                       $res = $res->where('daily_productions.met_no',$mat_no);
               } 
               if(!empty($grade))
               {
                       $res = $res->where('daily_productions.grade_code',$grade);
               }
               $res = $res->get();
               // dd($res);
               // echo "<pre>";print_r($res);exit();
               foreach ($res as $k => $value) {
                    
                    $dis_sum = 0;
                    $sp_dis = $value->fg_sap + $value->qty;

                    $result[$k]['plant'] = $value->mplant;
                    $result[$k]['category'] = $value->mcat;
                    $result[$k]['subcategory'] = $value->msubcat;
                    $result[$k]['mat_grp'] = $value->met_group;
                    $result[$k]['mat_no'] = $value->met_no;
                    $result[$k]['grade'] = $value->grade_code;
                    $result[$k]['desc'] = $value->met_desc;
                    $result[$k]['op_stk'] = $value->open_stk;
                    $result[$k]['mnthl_prdo_stk'] = $value->mnthly_prod;
                    $result[$k]['export'] = $value->export;
                    $result[$k]['size'] = $value->msize;
                    $result[$k]['offline'] = $value->offline;
                    $result[$k]['tot_qty'] = ($value->open_stk + $value->mnthly_prod)-($value->export + $value->offline);
                    $result[$k]['on_dom'] = $this->poQtyOrder($value->plant,$value->category,$value->subcategory,$value->start_date,$value->size);
                    $result[$k]['podateOrder'] = $this->podateOrder($value->plant,$value->category,$value->subcategory,$value->start_date,$value->size); 
                    // echo "<pre>";print_r($result['on_dom']);exit();
                      //-- from po //
                    $result[$k]['bal_qty'] = ($result[$k]['tot_qty'] - $result[$k]['on_dom']);
                    $result[$k]['order_pur'] = $value->sap_order;
                    $result[$k]['fg'] = $value->qty;
                    $result[$k]['fg_sap'] = $value->fg_sap;
                    $result[$k]['daily_id'] = $value->id;
                    $result[$k]['mnt_id'] = $value->mnt_id;
                    $result[$k]['dispatch'] = $this->dispatchQty($value->plant,$value->category,$value->subcategory,$value->start_date,$value->size);
                    foreach ($result[$k]['dispatch'] as $key => $value) {
                      
                       $dis_sum += $value['ds_qty'];
                    }

                    $result[$k]['dis_sum'] = $dis_sum;
                    $result[$k]['fg_after_dis'] =  $sp_dis - $dis_sum;


               }
             // echo "<pre>";print_r($result);exit();
            return response()->json(['status'=>1,
              'message' =>'success',
              'result' => $result],
              config('global.success_status'));

          }catch(\Exception $e){

           return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
         }
       }


       public function poQtyOrder($plant,$category,$subcategory,$start_date,$size)
       {
            $sum = 0;
            $category = Product::where('pro_name',$category)->first();
            $subcategory = Category::where('cat_name',$subcategory)->first();
            // return $subcategory->id;

            if(!empty($subcategory))
            {
            $res = DB::table('quotes')->leftJoin('quote_schedules','quotes.id','quote_schedules.quote_id')
            ->where('quotes.product_id',$category->id)->where('quotes.cat_id',$subcategory->id)
            ->where('quote_schedules.plant',$plant)->select('quote_schedules.quantity')
            ->where('quote_schedules.quote_status',1)
            ->where('quote_schedules.pro_size',$size)
            ->whereDate('quote_schedules.created_at','=',$start_date)
            // ->whereDate('quote_schedules.created_at','<=',$end_date)
            ->whereNull('quote_schedules.deleted_at')
            ->whereNull('quotes.deleted_at')
            ->where('quotes.kam_status',4)
            ->get();
   
            foreach ($res as $key => $value) {
               
                 $sum += $value->quantity;
            }

            return $sum;
          }else{

            return $sum;
          }
       }



        public function submitDispatchPlan(Request $request)
        {
           // return $request->all();exit;
            $response = [];
            try{

              $plant = $request->input('plant');
              $category = $request->input('category');
              $subcategory = $request->input('subcategory');
              $size = $request->input('size');
              $ds_dt = $request->input('ds_dt');
              $ds_qty = $request->input('ds_qty');
              $excel = $request->excel;

              if(!empty($excel))
              {
            
                $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
                $spreadsheet = $reader->load($request->excel);
                $sheetData = $spreadsheet->getActiveSheet()->toArray();
                // return $sheetData;
                $removed = array_shift($sheetData);
                $data = json_encode($sheetData);

                foreach($sheetData as $k => $val)
                {
                   
                    // return $val[5];
                        $user = array();
  
                        
                        $user['plant'] = $val[0];
                        $user['cat_id'] = $val[1];
                        $user['sub_cat_id'] = $val[2];
                        $user['size'] = $val[3];
                        $user['ds_qty'] = $val[4];
                        $user['ds_date'] = date("Y-m-d", strtotime($val[5]));

                        // return $user['ds_date'];
                        
                        Dispatchplan::create($user);
              
                }
              }
              else{

                     $user = array();
  
                        
                        $user['plant'] = $plant;
                        $user['cat_id'] = $category;
                        $user['sub_cat_id'] = $subcategory;
                        $user['size'] = $size;
                        $user['ds_qty'] = $ds_qty;
                        $user['ds_date'] = date("Y-m-d", strtotime($ds_dt));
                        // return $user;exit;
                        Dispatchplan::create($user);


                        
              }

                $response['success'] = true;
                $response['message'] = 'Dispatch Uploaded Successfully';
                return Response::json($response);

             
            
            }catch(\Exception $e){
                $response['error'] = $e->getMessage();
                return Response::json($response);
            }
        }



        public function dispatchQty($plant,$category,$subcategory,$start_date,$size)
        {
           $response = array();
             $d = date("m", strtotime($start_date));
             $res = DB::table('dispatch_plans')->where('plant',$plant)->where('size',$size)->where('cat_id',$category)->where('sub_cat_id',$subcategory)
             ->whereMonth('ds_date','=',$d)
             // ->whereDate('ds_date','<=',$end_date)
             ->get();

             foreach ($res as $key => $value) {
                 
                  $response[$key]['day'] = date("d", strtotime($value->ds_date));
                  $response[$key]['ds_qty'] = $value->ds_qty;
             }

             return $response;

        }



       public function getOrderPlanById($id)
       {
           try{ 

               
               // echo "<pre>";print_r($start_date);exit();

               $result = array();

               $res = DB::table('monthly_production_plans')
                ->leftJoin('daily_productions', function($join)
                         {
                             $join->on('monthly_production_plans.plant', '=', 'daily_productions.plant');
                             // $join->on('monthly_production_plans.start_date','=','daily_productions.start');
                             // $join->on('monthly_production_plans.end_date','daily_productions.end');
                             $join->on('monthly_production_plans.size','daily_productions.size');
                             $join->on('monthly_production_plans.cat_id','daily_productions.category');
                             $join->on('monthly_production_plans.sub_cat_id','daily_productions.subcategory');
                         })
               ->select('monthly_production_plans.open_stk','monthly_production_plans.mnthly_prod','daily_productions.*','monthly_production_plans.export','monthly_production_plans.offline','monthly_production_plans.sap_order','monthly_production_plans.fg_sap as msap','monthly_production_plans.id as mnt_id','monthly_production_plans.start_date','monthly_production_plans.end_date','monthly_production_plans.size');


               $res = $res->where('monthly_production_plans.id',$id)->get();
               // return $res;
               // echo "<pre>";print_r($res);exit();
               foreach ($res as $k => $value) {
                    
                    $dis_sum = 0;
                    
                    $result[$k]['podateOrder'] = 5; 
                    $result[$k]['start_date'] = $value->start_date;
                    $result[$k]['end_date'] = $value->end_date;
                    $result[$k]['plant'] = $value->plant;
                    $result[$k]['category'] = $value->category;
                    $result[$k]['subcategory'] = $value->subcategory;
                    $result[$k]['mat_grp'] = $value->met_group;
                    $result[$k]['mat_no'] = $value->met_no;
                    $result[$k]['grade'] = $value->grade_code;
                    $result[$k]['desc'] = $value->met_desc;
                    $result[$k]['op_stk'] = $value->open_stk;
                    $result[$k]['mnthl_prdo_stk'] = $value->mnthly_prod;
                    $result[$k]['export'] = $value->export;
                    $result[$k]['size'] = $value->size;
                    $result[$k]['offline'] = $value->offline;
                    $result[$k]['tot_qty'] = ($value->open_stk + $value->mnthly_prod)-($value->export + $value->offline);
                    $result[$k]['on_dom'] = $this->poQtyOrder($value->plant,$value->category,$value->subcategory,$value->start_date,$value->end_date,$value->size); 

                    // echo "<pre>";print_r($result['on_dom']);exit();
                      //-- from po //
                    $result[$k]['bal_qty'] = ($result[$k]['tot_qty'] - $result[$k]['on_dom']);
                    $result[$k]['order_pur'] = $value->sap_order;
                    $result[$k]['fg'] = $value->qty;
                    $result[$k]['fg_sap'] = $value->msap;
                    $result[$k]['fg_after_dis'] = $value->fg_sap;
                    $result[$k]['daily_id'] = $value->id;
                    $result[$k]['mnt_id'] = $value->mnt_id;
                    $result[$k]['dispatch'] = $this->dispatchQty($value->plant,$value->category,$value->subcategory,$value->start_date,$value->end_date,$value->size);
                    foreach ($result[$k]['dispatch'] as $key => $value) {
                      
                       $dis_sum += $value['ds_qty'];
                    }

                    $result[$k]['dis_sum'] = $dis_sum;


               }
             // echo "<pre>";print_r($result);exit();
            return response()->json(['status'=>1,
              'message' =>'success',
              'result' => $result],
              config('global.success_status'));

          }catch(\Exception $e){

           return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
         }
       }



           public function monthlyPlanUpdate(Request $request)
        {
           // echo "<pre>";print_r($request->all());exit();

          try{ 
                    $id = $request->input('mth_id');

                    $data = $request->except('mth_id');
                    $data['start_date'] = date("Y-m-d", strtotime($data['start_date']));
                    $data['end_date'] = date("Y-m-d", strtotime($data['end_date']));
                    $data['status'] = 0;

                    $res = Monthlyproductionplan::where('id',$id)->update($data);
                

                return response()->json(['status'=>1,
                  'message' =>'success',
                  'result' => 'Production plan updated'],
                  config('global.success_status'));
           


          }catch(\Exception $e){

           return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
         }
        }


       public function podateOrder($plant,$category,$subcategory,$start_date,$size)
       {
            $sum = array();

            $category = Product::where('pro_name',$category)->first();
            $subcategory = Category::where('cat_name',$subcategory)->first();
            // return $subcategory->id;
            $m = date("m", strtotime($start_date));
            if(!empty($subcategory))
            {
            $res = DB::table('quotes')->leftJoin('quote_schedules','quotes.id','quote_schedules.quote_id')
            ->where('quotes.product_id',$category->id)->where('quotes.cat_id',$subcategory->id)
            ->where('quote_schedules.plant',$plant)->select('quote_schedules.quantity','quote_schedules.created_at')
            ->where('quote_schedules.quote_status',1)
            ->where('quote_schedules.pro_size',$size)
            ->whereMonth('quote_schedules.created_at','=',$m)
            // ->whereDate('quote_schedules.created_at','<=',$end_date)
            ->whereNull('quote_schedules.deleted_at')
            ->whereNull('quotes.deleted_at')
            ->where('quotes.kam_status',4)
            ->get();
   
            foreach ($res as $key => $value) {
               
                 $sum[$key]['date'] = $value->created_at;
                 $sum[$key]['quantity'] = $value->quantity;
            }

            return $sum;
          }else{

            return [];
          }
       }

}
