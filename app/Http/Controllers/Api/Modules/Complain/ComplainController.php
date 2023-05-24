<?php

namespace App\Http\Controllers\Api\Modules\Complain;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Tymon\JWTAuth\Exceptions\JWTException;
use Illuminate\Support\Facades\Auth;
// use App\Mail\ComplaintMail;
// use App\Mail\ComplaintMailToRm;
use App\ServicesMy\MailService;
use App\Models\User;
use App\Models\Models\Product;
use App\Models\Models\Category;
use App\Models\Models\ProductSubCategory;
use App\Models\Models\PriceManagement;
use App\Models\Models\PriceCalculation;
use App\Models\Models\ThresholdLimits;
use App\Models\Models\Freights;
use App\Models\Models\ComplainCategory;
use App\Models\Models\ComplainSubCategory;
use App\Models\Models\ComplainSubCategory2;
use App\Models\Models\ComplainSubCategory3;
use App\Models\Models\ComplainRemarks;
use App\Models\Models\ComplainMain;
use App\Models\Models\Camnotification;
use App\Models\Models\CusNotification;
use App\Models\Models\SalesNotification;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use JWTAuth;
use Validator;
use File; 
use Storage;
use Response;
use DB; 
use Mail;

class ComplainController extends Controller
{
    /**
     * This is for add storeComplainCategory for admin. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function storeComplainCategory(Request $request)
    {
      \DB::beginTransaction();

        try{

          $validator = Validator::make($request->all(), [              
            'com_cate_name'        => 'required', 
          ]);

          if ($validator->fails()) { 
              return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $validator->errors()],config('global.failed_status'));
          }

         
          $input['com_cate_name'] = $request->com_cate_name; 

          $freightsData = ComplainCategory::create($input);

          \DB::commit();

          if($freightsData)
          {
            return response()->json(['status'=>1,'message' =>'Complaint category added successfully','result' => $freightsData],config('global.success_status'));
          }
          else
          { 
            return response()->json(['status'=>1,'message' =>'Somthing went wrong','result' => []],config('global.success_status'));
          } 
           

        }catch(\Exception $e){ 
          \DB::rollback(); 
          return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
        }
    }

    /**
     * This is for get complain category. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function getComplainCategory(Request $request)
    {
      try{ 
            $ComplainCategoryData = ComplainCategory::get();  
             
            if (count($ComplainCategoryData)>0) {
               return response()->json(['status'=>1,'message' =>'success.','result' => $ComplainCategoryData],200);
            }
            else{

               return response()->json(['status'=>1,'message' =>'No data found','result' => []],config('global.success_status'));

            }
            
            
            }catch(\Exception $e){
                $response['error'] = $e->getMessage();
                return response()->json([$response]);
            }


    }

    /**
     * This is for store complain sub category admin. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function storeComplainSubCategory(Request $request)
    {
      \DB::beginTransaction();

        try{

          $validator = Validator::make($request->all(), [              
            'com_cate_id'        => 'required',
            'com_sub_cate_name'        => 'required', 
          ]);

          if ($validator->fails()) { 
            return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $validator->errors()],config('global.failed_status'));
          } 
         
          $input['com_cate_id'] = $request->com_cate_id;
          $input['com_sub_cate_name'] = $request->com_sub_cate_name; 

          $freightsData = ComplainSubCategory::create($input);

          \DB::commit();

          if($freightsData)
          {
            return response()->json(['status'=>1,'message' =>'Complaint sub category added successfully','result' => $freightsData],config('global.success_status'));
          }
          else
          { 
            return response()->json(['status'=>1,'message' =>'Somthing went wrong','result' => []],config('global.success_status'));
          } 
           

        }catch(\Exception $e){ 
          \DB::rollback(); 
          return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
        }
    }

    /**
     * This is for get complain category. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function getComplainSubCategory($com_cate_id)
    {
      try{ 
            $ComplainSubCategoryData = ComplainSubCategory::where('com_cate_id',$com_cate_id)->orderBy('id','asc')->get(); 
             
            if (count($ComplainSubCategoryData)>0) {
               return response()->json(['status'=>1,'message' =>'success.','result' => $ComplainSubCategoryData],200);
            }
            else{

              return response()->json(['status'=>1,'message' =>'No data found','result' => []],config('global.success_status'));

            }
            
            
            }catch(\Exception $e){
                $response['error'] = $e->getMessage();
                return response()->json([$response]);
            }


    }

     
    /**
     * This is for add storeComplainSubCategory2. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function storeComplainSubCategory2(Request $request)
    {
      \DB::beginTransaction();

        try{

          $validator = Validator::make($request->all(), [              
            'com_cate_id'        => 'required',
            'com_sub_cate_id'        => 'required',
            'com_sub_cate2_name'        => 'required', 
          ]);

          if ($validator->fails()) { 
              return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $validator->errors()],config('global.failed_status'));
          }

         
          $input['com_cate_id'] = $request->com_cate_id;
          $input['com_sub_cate_id'] = $request->com_sub_cate_id;
          $input['com_sub_cate2_name'] = $request->com_sub_cate2_name;
           
          $freightsData = ComplainSubCategory2::create($input);

          \DB::commit();

          if($freightsData)
          {
            return response()->json(['status'=>1,'message' =>'Complaint sub category 2 added successfully','result' => $freightsData],config('global.success_status'));
          }
          else
          { 
            return response()->json(['status'=>1,'message' =>'Somthing went wrong','result' => []],config('global.success_status'));
          } 
           

        }catch(\Exception $e){ 
          \DB::rollback(); 
          return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
        }
    }

    /**
     * This is for add storeComplainSubCategory2. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function getComplainSubCategory2($com_sub_cate_id)
    {
      try{ 
            $ComplainSubCategory2Data = ComplainSubCategory2::where('com_sub_cate_id',$com_sub_cate_id)->orderBy('id','desc')->get();   
             
             
            if (count($ComplainSubCategory2Data)>0) {
               return response()->json(['status'=>1,'message' =>'success.','result' => $ComplainSubCategory2Data],200);
            }
            else{

              return response()->json(['status'=>1,'message' =>'No data found','result' => []],config('global.success_status'));

            }
            
            
            }catch(\Exception $e){
                $response['error'] = $e->getMessage();
                return response()->json([$response]);
            }
    }

    /**
     * This is for add storeComplainSubCategory3. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function storeComplainSubCategory3(Request $request)
    {
      \DB::beginTransaction();

        try{

          $validator = Validator::make($request->all(), [              
            'com_cate_id'        => 'required',
            'com_sub_cate_id'        => 'required',
            'com_sub_cate_2id'        => 'required',
            'com_sub_cate3_name'        => 'required', 
          ]);

          if ($validator->fails()) { 
              return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $validator->errors()],config('global.failed_status'));
          }

         
          $input['com_cate_id'] = $request->com_cate_id;
          $input['com_sub_cate_id'] = $request->com_sub_cate_id;
          $input['com_sub_cate_2id'] = $request->com_sub_cate_2id;
          $input['com_sub_cate3_name'] = $request->com_sub_cate3_name;
           
          $freightsData = ComplainSubCategory3::create($input);

          \DB::commit();

          if($freightsData)
          {
            return response()->json(['status'=>1,'message' =>'Complaint sub category 2 added successfully','result' => $freightsData],config('global.success_status'));
          }
          else
          { 
            return response()->json(['status'=>1,'message' =>'Somthing went wrong','result' => []],config('global.success_status'));
          } 
           

        }catch(\Exception $e){ 
          \DB::rollback(); 
          return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
        }
    }

    /**
     * This is for add storeComplainSubCategory2. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function getComplainSubCategory3($com_sub_cate_2id)
    {
      try{ 
          $ComplainSubCategory3Data = ComplainSubCategory3::where('com_sub_cate_2id',$com_sub_cate_2id)->orderBy('id','desc')->get();   
             
             
          if (count($ComplainSubCategory3Data)>0) {
             return response()->json(['status'=>1,'message' =>'success.','result' => $ComplainSubCategory3Data],200);
          }
          else{ 
            return response()->json(['status'=>1,'message' =>'No data found','result' => []],config('global.success_status')); 
          }
          
          
        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return response()->json([$response]);
        }
    }

    /**
     * This is for add storeComplain Main. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function storeComplainMain(Request $request)
    {

      \DB::beginTransaction();

        try{

          $validator = Validator::make($request->all(), [              
            'com_cate_id'        => 'required',
            'com_sub_cate_id'        => 'required',
            // 'com_sub_cate_2id'        => 'required',
            // 'com_sub_cate_3id'        => 'required',
            'po_number'        => 'required',
            'po_date'        => 'required',
            'user_id'        => 'required', 
          ]);

          if ($validator->fails()) { 
            return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $validator->errors()],config('global.failed_status'));
          } 
         
          $input['com_cate_id'] = $request->com_cate_id;
          $input['com_sub_cate_id'] = $request->com_sub_cate_id;
          // $input['com_sub_cate_2id'] = $request->com_sub_cate_2id;
          // $input['com_sub_cate_3id'] = $request->com_sub_cate_3id;
          $input['po_number'] = $request->po_number;
          $input['po_date'] = date("Y-m-d", strtotime($request->po_date));
          $input['user_id'] = $request->user_id;

         
          $getuser = User::where('id',$request->user_id)->first();
          
          $complainData = ComplainMain::create($input); 

          if ($request->hasFile('cust_complain_file'))
          {  

            $image = $request->cust_complain_file; 

            //$filename = time().'-'.rand(1000,9999).'.'.$image->getClientOriginalExtension();
            $filename = rand(1000,9999).'-'.$image->getClientOriginalName();
            Storage::putFileAs('public/images/complain/', $image, $filename);

            $remarksinput['cust_com_file'] = $filename; 
          }

          $remarksinput['complain_id'] = $complainData->id;
          $remarksinput['customer_remarks'] = $request->customer_remarks;
          // dd($remarksinput);

          $freightsData = ComplainRemarks::create($remarksinput);

          \DB::commit();

          if($freightsData)
          {

            $cc_email = array();
            $cam = User::where('zone',$getuser->zone)->where('id','!=',$getuser->id)->where('user_type','Kam')->get()->toArray();

            foreach ($cam as $key => $value) {
             
              array_push($cc_email,$value['email']);
            }

            // $data['customer_name'] = $getuser['name'];
            // $data['email'] = $getuser['email'];
            // $data['cc'] = $cc_email;
            // $data['po_number'] = $request->po_number;
            // $data['user_type'] = '';

            // dd($data);

            $mailSub = 'Complaint Mail';
            $mailTemplateBlade = 'mail.complaint_mail_user'; 
            $sentTo = $getuser['email']; 
            $mailData['customer_name'] = $getuser['name'];
            $mailData['po_number'] = $request->po_number;
            // dd($cc_email);
            (new MailService)->dotestMail($mailSub,$mailTemplateBlade,$sentTo,$mailData,$cc_email);

            $desc_no = DB::table('orders')->where('po_no',$request->po_number)->first();
                     
            $resA = DB::table('quotes')->leftjoin('users','quotes.user_id','users.id')
                ->select('users.zone')
                ->where('quotes.rfq_no',$desc_no->rfq_no)
                ->whereNull('quotes.deleted_at')->first();
              
            $zone = $resA->zone;

            $datas['desc'] = 'Complaints raised against';
            $datas['desc_no'] = $request->po_number;
            $datas['user_id'] = $request->user_id;
            $datas['url_type'] = 'Comp';
            $datas['status'] = 1;
            $datas['sender_ids'] = $zone;

            Camnotification::create($datas);
             
            // dd($data);

            // Mail::send(new ComplaintMail($data));
            
            return response()->json(['status'=>1,'message' =>'Complaint added successfully','result' => 'success'],config('global.success_status'));
          }
          else
          { 
            return response()->json(['status'=>1,'message' =>'Somthing went wrong','result' => []],config('global.success_status'));
          } 
           

        }catch(\Exception $e){ 
          \DB::rollback(); 
          return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
        }
    }

    /**
     * This is for add remarksReplay. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function remarksReplay(Request $request)
    {
      \DB::beginTransaction();

        try{

          $validator = Validator::make($request->all(), [              
            'complain_id'        => 'required', 
          ]);

          if ($validator->fails()) { 
              return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $validator->errors()],config('global.failed_status'));
          }
          $complainData = ComplainMain::where('id',$request->complain_id)->first(); 
          $getuser = User::where('id',$complainData->user_id)->first();

          //Customer complaint....
          if ($request->customer_remarks) {

            $input['complain_id'] = $request->complain_id;
            $input['customer_remarks'] = $request->customer_remarks;

            if ($request->hasFile('cust_complain_file'))
            {  

              $image = $request->cust_complain_file;
              // dd($image->getClientOriginalName()); 

              // $filename = time().'-'.rand(1000,9999).'.'.$image->getClientOriginalExtension();
              $filename = rand(1000,9999).'-'.$image->getClientOriginalName();
              
              Storage::putFileAs('public/images/complain/', $image, $filename);

              $input['cust_com_file'] = $filename; 
            }
            // dd($input);
            $RemarksData = ComplainRemarks::create($input);

            $cc_email = array();
            $cam = User::where('zone',$getuser->zone)->where('id','!=',$getuser->id)->where('user_type','Kam')->get()->toArray();

            foreach ($cam as $key => $value) {
             
              array_push($cc_email,$value['email']);
            }

            // $data['customer_name'] = $getuser['name'];
            // $data['email'] = $getuser['email'];
            // $data['cc'] = $cc_email;
            // $data['po_number'] = $complainData->po_number;
            // $data['user_type'] = '';

            // dd($data);

            $mailSub = 'Complaint Mail';
            $mailTemplateBlade = 'mail.complaint_mail_user'; 
            $sentTo = $getuser['email']; 
            $mailData['customer_name'] = $getuser['name'];
            $mailData['po_number'] = $complainData->po_number;
            // dd($cc_email);
            (new MailService)->dotestMail($mailSub,$mailTemplateBlade,$sentTo,$mailData,$cc_email);

            $desc_no = DB::table('orders')->where('po_no',$complainData->po_number)->first();
                     
            $resA = DB::table('quotes')->leftjoin('users','quotes.user_id','users.id')
                ->select('users.zone')
                ->where('quotes.rfq_no',$desc_no->rfq_no)
                ->whereNull('quotes.deleted_at')->first();
                // echo "<pre>";print_r($resA);exit();

            $zone = $resA->zone;

            $datas['desc'] = 'Complaint replayed ';
            $datas['desc_no'] = $complainData->po_number;
            $datas['user_id'] = $getuser->id;
            $datas['url_type'] = 'Comp';
            $datas['status'] = 1;
            $datas['sender_ids'] = $zone;

            Camnotification::create($datas);

            // Mail::send(new ComplaintMail($data));
          } //End of customer complaint....
          if ($request->kam_remarks) {
            // dd($request->kam_id);
            
            $input['complain_id'] = $request->complain_id;
            $input['kam_remarks'] = $request->kam_remarks;

            if ($request->hasFile('kam_complain_file'))
            {  

              $image = $request->kam_complain_file; 

              $filename = rand(1000,9999).'-'.$image->getClientOriginalName();
              Storage::putFileAs('public/images/complain/', $image, $filename);

              $input['kam_com_file'] = $filename; 
            }

            if ($request->hasFile('kam_com_file_2'))
            {  

              $image = $request->kam_com_file_2; 

              $filename = rand(1000,9999).'-'.$image->getClientOriginalName();
              Storage::putFileAs('public/images/complain/', $image, $filename);

              $input['kam_com_file_2'] = $filename; 
            }

             $cam = User::where('zone',$getuser->zone)->where('id','!=',$request->kam_id)->where('user_type','Kam')->get()->toArray();
              $cc_email = array();
             foreach ($cam as $key => $value) {
             
              array_push($cc_email,$value['email']);
              }

              
              // $data['customer_name'] = $getuser['name'];
              // $data['email'] = $getuser['email'];
              // $data['cc'] = $cc_email;
              // $data['po_number'] = $complainData->po_number;
              // $data['user_type'] = 'Kam';
            // dd($data);

              $mailSub = 'Complaint Mail';
              $mailTemplateBlade = 'mail.complaint_mail_kam'; 
              $sentTo = $getuser['email']; 
              $mailData['customer_name'] = $getuser['name'];
              $mailData['po_number'] = $complainData->po_number;
              // dd($sentTo);
              (new MailService)->dotestMail($mailSub,$mailTemplateBlade,$sentTo,$mailData,$cc_email);

            $cdata = array(); 

            $cdata['desc'] = 'Complaint replayed';
            $cdata['desc_no'] = $complainData->po_number;
            $cdata['user_id'] =  $request->kam_id;
            $cdata['url_type'] = 'Comp';
            $cdata['status'] = 1;
            $cdata['sender_ids'] = $getuser->id;

            CusNotification::create($cdata);

            // Mail::send(new ComplaintMail($data));
            $RemarksData = ComplainRemarks::create($input);
          } 

          \DB::commit();

          if($RemarksData)
          {
            return response()->json(['status'=>1,'message' =>'Remarks added successfully','result' => $RemarksData],config('global.success_status'));
          }
          else
          { 
            return response()->json(['status'=>1,'message' =>'Somthing went wrong','result' => []],config('global.success_status'));
          } 
           

        }catch(\Exception $e){ 
          \DB::rollback(); 
          return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $e->getMessage()],config('global.failed_status'));
        }
    }

    /**
     * This is for add getComplainCategory. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function getComplainListKam(Request $request)
    {
      try{ 
          $ComplainListData = DB::table('complain_main')
          ->leftjoin('complain_categorys','complain_main.com_cate_id','complain_categorys.id')
          ->leftjoin('complain_sub_categorys','complain_main.com_sub_cate_id','complain_sub_categorys.id')
          ->leftjoin('complain_sub_categorys2','complain_main.com_sub_cate_2id','complain_sub_categorys2.id')
          ->leftjoin('complain_sub_categorys3','complain_main.com_sub_cate_3id','complain_sub_categorys3.id')
           ->leftjoin('users','complain_main.user_id','users.id')
           ->leftjoin('orders','complain_main.po_number','orders.po_no')
          ->join('complain_remarks','complain_main.id','complain_remarks.complain_id')
         
         ->select('complain_main.id','users.name as customer_name','complain_main.po_number','complain_main.po_date','complain_main.created_at','complain_main.file','complain_categorys.com_cate_name','complain_sub_categorys.com_sub_cate_name','complain_sub_categorys2.com_sub_cate2_name','complain_sub_categorys3.com_sub_cate3_name','complain_remarks.customer_remarks','orders.cus_po_no'); 
          
         
         if(!empty($request->user_id))
           {
             $ComplainListData = $ComplainListData->where('complain_main.user_id',$request->user_id);
           }
            
           $ComplainListData = $ComplainListData->orderBy('complain_remarks.created_at','desc')->groupBy('complain_remarks.complain_id')->get();
            



           $complainlist = [];
          
          foreach ($ComplainListData as $ComplainList) {

            $data['complain_id'] = $ComplainList->id;
            $data['customer_name'] = $ComplainList->customer_name;
            $data['created_at'] = $ComplainList->created_at;
            $data['com_cate_name'] = $ComplainList->com_cate_name;
            $data['com_sub_cate_name'] = $ComplainList->com_sub_cate_name; 
            $data['com_sub_cate2_name'] = $ComplainList->com_sub_cate2_name;
            $data['com_sub_cate3_name'] = $ComplainList->com_sub_cate3_name;
            $data['po_number'] = $ComplainList->po_number;
            $data['cus_po_no'] = $ComplainList->cus_po_no;
            $data['po_date'] = $ComplainList->po_date;
            $data['remarks'] = $ComplainList->customer_remarks;

            $data['com_file_url'] = $this->complainFlain($ComplainList->id);

           

            $complainlist[] = $data;
          }
          
          if (count($ComplainListData)>0) {
             return response()->json(['status'=>1,'message' =>'success.','result' => $complainlist],200);
          }
          else{

             return response()->json(['status'=>1,'message' =>'No data found','result' => []],config('global.success_status'));

          } 
          
          }catch(\Exception $e){
              $response['error'] = $e->getMessage();
              return response()->json([$response]);
          }


    }

    public function complainFlain($ComplainList)
    {
        $getComplainfile = DB::table('complain_remarks')
                            ->where('complain_id',$ComplainList)
                            ->select('complain_remarks.id',
                                      'complain_remarks.cust_com_file',
                                      'complain_remarks.kam_com_file',
                                      'complain_remarks.kam_com_file_2')
                            ->get();

        $cust_com_filearr = [];

        foreach ($getComplainfile as $key => $value) 
        { 
            if(!empty($value->cust_com_file)){
              array_push( $cust_com_filearr, $value->cust_com_file);
            }
 
        }
        $getComplainfiledata["cust_com_file"]  = $cust_com_filearr;

        $kam_com_filearr = [];

        foreach ($getComplainfile as $key => $value) 
        { 
          if(!empty($value->kam_com_file)){
            array_push( $kam_com_filearr, $value->kam_com_file);
            array_push( $kam_com_filearr, $value->kam_com_file_2);
          }
 
        }
        $getComplainfiledata["kam_com_file"]  = $kam_com_filearr; 

        return $getComplainfiledata;
    }

    /**
     * This is for add get Complain Details. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function complainDetailsKam($po_number,$kam_id=null)
    {
      try{
            $ComplainListData = DB::table('complain_main')
            ->leftjoin('complain_categorys','complain_main.com_cate_id','complain_categorys.id')
            ->leftjoin('complain_sub_categorys','complain_main.com_sub_cate_id','complain_sub_categorys.id')
            ->leftjoin('complain_sub_categorys2','complain_main.com_sub_cate_2id','complain_sub_categorys2.id')
            ->leftjoin('complain_sub_categorys3','complain_main.com_sub_cate_3id','complain_sub_categorys3.id')
            ->leftjoin('orders','complain_main.po_number','orders.po_no')
            ->leftjoin('users','complain_main.user_id','users.id')
            ->select('complain_main.id','users.name as customer_name','complain_main.po_number','complain_main.po_date','complain_main.created_at','complain_main.file','complain_main.closed_status','complain_categorys.com_cate_name','complain_sub_categorys.com_sub_cate_name','complain_sub_categorys2.com_sub_cate2_name','complain_sub_categorys3.com_sub_cate3_name','orders.cus_po_no')
            ->where('complain_main.po_number',$po_number)
            ->first(); 

          $data['complain_id'] = $ComplainListData->id;
          $data['customer_name'] = $ComplainListData->customer_name;
          $data['created_at'] = $ComplainListData->created_at;
          $data['complain_status'] = $ComplainListData->closed_status;
          $data['com_cate_name'] = $ComplainListData->com_cate_name;
          $data['com_sub_cate_name'] = $ComplainListData->com_sub_cate_name; 
          $data['com_sub_cate2_name'] = $ComplainListData->com_sub_cate2_name;
          $data['com_sub_cate3_name'] = $ComplainListData->com_sub_cate3_name;
          $data['po_number'] = $ComplainListData->po_number;
          $data['po_date'] = $ComplainListData->po_date;
          $data['cus_po_no'] = $ComplainListData->cus_po_no;

          if ($ComplainListData->file) 
          {

            $data['file_url'] = asset('storage/app/public/images/complain/'.$ComplainListData->file);
          }
          else
          {
            $data['file_url'] =  null;
          } 
          
          $remarksData = ComplainRemarks::where('complain_id',$ComplainListData->id)->get();

          // This is for get RM mail address....
          if (isset($kam_id)) {
            $getkam = User::where('id',$kam_id)->first();
            $rm_email = array();
            $cam = User::where('zone',$getkam->zone)->where('id','!=',$getkam->id)->where('user_type','RM')->get()->toArray();

            foreach ($cam as $key => $value) {
             
              array_push($rm_email,$value['email']);
            }
          }
          else{
            $rm_email = array();
          }
          
          
           

          if (!empty($ComplainListData)){
            return response()->json(['status'=>1,'message' =>'success','result' =>$data,'remarksData' =>$remarksData,'rm_email'=>$rm_email],200);
          }
          else{

           return response()->json(['status'=>1,'message' =>'No data found','result' => []],config('global.success_status'));

          } 
            
          }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return response()->json([$response]);
          }
    }

    /**
     * This is for add get Complain Details. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function sendComMailRm(Request $request)
    {

      try{
            $validator = Validator::make($request->all(), [              
            'rm_mail'        => 'required|email',
            'po_number'        => 'required', 
            'kam_id'        => 'required', 
            ]);

            if ($validator->fails()) { 
                return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $validator->errors()],config('global.failed_status'));
            }
            
            $ComplainListData = DB::table('complain_main')
            ->leftjoin('complain_categorys','complain_main.com_cate_id','complain_categorys.id')
            ->leftjoin('complain_sub_categorys','complain_main.com_sub_cate_id','complain_sub_categorys.id')
            ->leftjoin('complain_sub_categorys2','complain_main.com_sub_cate_2id','complain_sub_categorys2.id')
            ->leftjoin('complain_sub_categorys3','complain_main.com_sub_cate_3id','complain_sub_categorys3.id')
            ->leftjoin('users','complain_main.user_id','users.id')
            ->select('complain_main.id','users.name as customer_name','complain_main.po_number','complain_main.po_date','complain_main.created_at','complain_main.file','complain_main.closed_status','complain_categorys.com_cate_name','complain_sub_categorys.com_sub_cate_name','complain_sub_categorys2.com_sub_cate2_name','complain_sub_categorys3.com_sub_cate3_name')
            ->where('complain_main.po_number',$request->po_number)
            ->first(); 
           
          $data['complain_id'] = $ComplainListData->id;
          $data['customer_name'] = $ComplainListData->customer_name;
          $data['created_at'] = $ComplainListData->created_at;
          $data['complain_status'] = $ComplainListData->closed_status;
          $data['com_cate_name'] = $ComplainListData->com_cate_name;
          $data['com_sub_cate_name'] = $ComplainListData->com_sub_cate_name; 
          $data['com_sub_cate2_name'] = $ComplainListData->com_sub_cate2_name;
          $data['com_sub_cate3_name'] = $ComplainListData->com_sub_cate3_name;
          $data['po_number'] = $ComplainListData->po_number;
          $data['po_date'] = $ComplainListData->po_date;

          if ($ComplainListData->file) 
          {

            $data['file_url'] = asset('storage/app/public/images/complain/'.$ComplainListData->file);
          }
          else
          {
            $data['file_url'] =  null;
          } 
          
          $remarksData = ComplainRemarks::where('complain_id',$ComplainListData->id)->get();

          // This is for get RM mail address....
          if (isset($request->kam_id)) {
            $getkam = User::where('id',$request->kam_id)->first(); 
          }
           
          $mailData['email'] = $request->rm_mail;
          $mailData['customer_name'] = $ComplainListData->customer_name;
          $mailData['com_cate_name'] =  $ComplainListData->com_cate_name;
          $mailData['com_sub_cate_name'] = $ComplainListData->com_sub_cate_name;          
          $mailData['po_number'] = $ComplainListData->po_number;
          $mailData['kam_name'] = $getkam->name;
          $mailData['remarksData'] = $remarksData;


          // Mail::send(new ComplaintMailToRm($data));

          if (!empty($mailData)){
             Mail::send(new ComplaintMailToRm($mailData));
            return response()->json(['status'=>1,'message' =>'Complaint mail send to RM successfully.'],200);
          }
          else{

           return response()->json(['status'=>1,'message' =>'No data found','result' => []],config('global.success_status'));

          } 
            
          }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return response()->json([$response]);
          }
    }

    /**
     * This is for add get Complain Details. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function complainDetails($complainId)
    {
      try{
            $ComplainListData = DB::table('complain_main')
            ->leftjoin('complain_categorys','complain_main.com_cate_id','complain_categorys.id')
            ->leftjoin('complain_sub_categorys','complain_main.com_sub_cate_id','complain_sub_categorys.id')
            ->leftjoin('complain_sub_categorys2','complain_main.com_sub_cate_2id','complain_sub_categorys2.id')
            ->leftjoin('complain_sub_categorys3','complain_main.com_sub_cate_3id','complain_sub_categorys3.id')
         
            ->select('complain_main.id','complain_main.customer_name','complain_main.po_number','complain_main.po_date','complain_main.created_at','complain_main.file','complain_main.closed_status','complain_categorys.com_cate_name','complain_sub_categorys.com_sub_cate_name','complain_sub_categorys2.com_sub_cate2_name','complain_sub_categorys3.com_sub_cate3_name')
            ->where('complain_main.id',$complainId)
            ->first(); 

          $data['complain_id'] = $ComplainListData->id;
          $data['customer_name'] = $ComplainListData->customer_name;
          $data['created_at'] = $ComplainListData->created_at;
          $data['complain_status'] = $ComplainListData->closed_status;
          $data['com_cate_name'] = $ComplainListData->com_cate_name;
          $data['com_sub_cate_name'] = $ComplainListData->com_sub_cate_name; 
          $data['com_sub_cate2_name'] = $ComplainListData->com_sub_cate2_name;
          $data['com_sub_cate3_name'] = $ComplainListData->com_sub_cate3_name;
          $data['po_number'] = $ComplainListData->po_number;
          $data['po_date'] = $ComplainListData->po_date;

          if ($ComplainListData->file) 
          {

            $data['file_url'] = asset('storage/app/public/images/complain/'.$ComplainListData->file);
          }
          else
          {
            $data['file_url'] =  null;
          } 
          
          $remarksData = ComplainRemarks::where('complain_id',$complainId)->get();
             
          if (!empty($ComplainListData)){
            return response()->json(['status'=>1,'message' =>'success','result' =>$data,'remarksData' =>$remarksData],200);
          }
          else{

           return response()->json(['status'=>1,'message' =>'No data found','result' => []],config('global.success_status'));

          } 
            
          }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return response()->json([$response]);
          }
    }
     

     

    /**
     * This is for closed complain.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function closedRemarks($id)
    {  
        $getComplain = ComplainMain::where('id',$id)->first();  

        if(!empty($getComplain))
        { 
        $input['closed_status'] = 2; //2=> Open/1=>Closed. 

        $updateComplain = ComplainMain::where('id',$getComplain->id)->update($input);
 
          return response()->json(['status'=>1,'message' =>'Complaint status inactive successfully.']);          
        }
        else
        {
          return response()->json(['status'=>0,'message'=>'No data found'],200);
        }
        
    }

    
}
