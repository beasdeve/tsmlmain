<?php

namespace App\Http\Controllers\Api\Modules\Complain;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Mail\ComplaintMail;
use App\Mail\ComplaintMailToRm;
use App\Mail\ComplaintMailSend;
use App\ServicesMy\MailService;
use App\Models\User;
use App\Models\Models\Department;
use App\Models\Models\DepartmentMail;
use App\Models\Models\ComplaintManage;
use App\Models\Models\ComplainRemarks;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use JWTAuth;
use Validator;
use File; 
use Storage;
use Response;
use DB; 
use Mail;


class ComplainManageController extends Controller
{
    /**
     * This is for add get Complain Details. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function sendComMail(Request $request)
    {

      try{
            $validator = Validator::make($request->all(), [              
            'r_mail'        => 'required|email',
            'depa_id'        => 'required', 
            'po_no'        => 'required',
            'kam_id'        => 'required', 
            'ka_remarks'        => 'required',
            ]);

            if ($validator->fails()) { 
                return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $validator->errors()],config('global.failed_status'));
            }

            $input['depa_id'] = $request->depa_id;
            $input['r_mail'] = $request->r_mail;
          	$input['ka_remarks'] = $request->ka_remarks;
          	$input['kam_id'] = $request->kam_id;
            $input['po_no'] = $request->po_no;
            $input['complain_id'] = $request->complain_id;
          	 // dd($input);
            $freightsData = ComplaintManage::create($input);

             

           //  $mailData['email'] = $request->r_mail;
          	// $mailData['kam_remarks'] = $request->ka_remarks;
          	// $mailData['com_cate_name'] =  $ComplainListData->com_cate_name;
          	// $mailData['com_sub_cate_name'] = $ComplainListData->com_sub_cate_name;          
          	// $mailData['po_no'] = $ComplainListData->po_no;
          	// $mailData['kam_name'] = $getkam->name;
          	// $mailData['remarksData'] = $remarksData;
          	// $data['email'] = 'partha.beas@gmail.com';
    //     Mail::send(new Register($data));
		    $mailSub = 'Complaint Mail';
		    $mailTemplateBlade = 'mail.complaint_mail_send'; 
		    $sentTo = $request->r_mail;
		    $mailData['kam_remarks'] = $request->ka_remarks; 
		     
          	(new MailService)->dotestMail($mailSub,$mailTemplateBlade,$sentTo,$mailData);
            // Mail::send(new ComplaintMailSend($mailData));
          	
          	return response()->json(['status'=>1,'message' =>'Complaint mail send to successfully.'],200);

            // $remarksData = ComplainRemarks::where('complain_id',$ComplainListData->id)->get();

          // This is for get RM mail address....
          // if (isset($request->kam_id)) {
          //   $getkam = User::where('id',$request->kam_id)->first(); 
          // }
           
          // $mailData['email'] = $request->r_mail;
          // $mailData['customer_name'] = $ComplainListData->customer_name;
          // $mailData['com_cate_name'] =  $ComplainListData->com_cate_name;
          // $mailData['com_sub_cate_name'] = $ComplainListData->com_sub_cate_name;          
          // $mailData['po_no'] = $ComplainListData->po_no;
          // $mailData['kam_name'] = $getkam->name;
          // $mailData['remarksData'] = $remarksData;


          // Mail::send(new ComplaintMailToRm($data));
         // if (!empty($mailData)){
         //     // Mail::send(new ComplaintMailToRm($mailData));
         //    return response()->json(['status'=>1,'message' =>'Complaint mail send to successfully.'],200);
         //  }
         //  else{

         //   return response()->json(['status'=>1,'message' =>'No data found','result' => []],config('global.success_status'));

         //  } 
           
            
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
    public function comMailConfirm(Request $request)
    {

      try{
            $validator = Validator::make($request->all(), [  
            'mcom_id'        => 'required',
            'kam_id'        => 'required',
            'po_no'        => 'required', 
            ]);

            if ($validator->fails()) { 
                return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $validator->errors()],config('global.failed_status'));
            }

            $chk = ComplaintManage::where('id',$request->mcom_id)->where('kam_id',$request->kam_id)->where('po_no',$request->po_no)->first();

            if (!empty($chk)) {
             	$upinput['is_mail_resiv'] = 1;
          	 
            	$freightsData = ComplaintManage::where('id',$request->mcom_id)->where('kam_id',$request->kam_id)->where('po_no',$request->po_no)->update($upinput);
          	
          		return response()->json(['status'=>1,'message' =>'Complaint mail ressive to concerned department successfully.'],200); 
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
    public function getComManageData(Request $request)
    {

      try{
            $validator = Validator::make($request->all(), [  
            'kam_id'        => 'required',
            'complain_id'        => 'required',
            'po_no'        => 'required',
             
            ]);

            if ($validator->fails()) { 
                return response()->json(['status'=>0,'message' =>config('global.failed_msg'),'result' => $validator->errors()],config('global.failed_status'));
            }

            $comManage = ComplaintManage::where('kam_id',$request->kam_id)->where('complain_id',$request->complain_id)->where('po_no',$request->po_no)->first();
            
             
             	 
             	$data['com_manage_id'] = (!empty($comManage->id)) ? $comManage->id : '';
             	$data['kam_id'] = (!empty($comManage->kam_id)) ? $comManage->kam_id : '';
             	$data['complain_id'] = (!empty($comManage->complain_id)) ?  $comManage->complain_id : '';
             	$data['po_no'] = (!empty($comManage->po_no)) ? $comManage->po_no : '';
             	$data['deperment_id'] = (!empty($comManage->depa_id)) ? $comManage->depa_id : '';
             	$data['r_mail'] = (!empty($comManage->r_mail)) ?  $comManage->r_mail : '';
             	$data['ka_remarks'] = (!empty($comManage->ka_remarks)) ?  $comManage->ka_remarks : '';
             	$data['is_mail_resiv'] = (!empty($comManage->is_mail_resiv)) ?  $comManage->is_mail_resiv : '';

             	if (isset($comManage->interim_report)) 
		   		{

		   			$data['interim_report'] = asset('storage/app/public/images/complaintManage/'.$comManage->interim_report);
		   		}
		   		else
		   		{
		   			$data['interim_report'] =  null;
		   		}
		   		
		   		if(isset($comManage->final_report))
		   		{
		   			$data['final_report'] =  asset('storage/app/public/images/complaintManage/'.$comManage->final_report);
		   		}
		   		else
		   		{
		   			$data['final_report'] =  null;	
		   		}

		   		if(isset($comManage->capa))
		   		{
		   			$data['capa'] =  asset('storage/app/public/images/complaintManage/'.$comManage->capa);
		   		}
		   		else
		   		{
		   			$data['capa'] =  null;	
		   		}

		   		if(isset($comManage->financial_set_repo))
		   		{
		   			$data['financial_set_repo'] =  asset('storage/app/public/images/complaintManage/'.$comManage->financial_set_repo);
		   		}
		   		else
		   		{
		   			$data['financial_set_repo'] =  null;	
		   		}

		   		if(isset($comManage->sales_approval))
		   		{
		   			$data['sales_approval'] =  asset('storage/app/public/images/complaintManage/'.$comManage->sales_approval);
		   		}
		   		else
		   		{
		   			$data['sales_approval'] =  null;	
		   		}

		   		if(isset($comManage->marketing_head_approval))
		   		{
		   			$data['marketing_head_approval'] =  asset('storage/app/public/images/complaintManage/'.$comManage->marketing_head_approval);
		   		}
		   		else
		   		{
		   			$data['marketing_head_approval'] =  null;	
		   		}

		   		if(isset($comManage->sr_gm_approval))
		   		{
		   			$data['sr_gm_approval'] =  asset('storage/app/public/images/complaintManage/'.$comManage->sr_gm_approval);
		   		}
		   		else
		   		{
		   			$data['sr_gm_approval'] =  null;	
		   		}

		   		if(isset($comManage->financial_approval_op))
		   		{
		   			$data['financial_approval_op'] =  asset('storage/app/public/images/complaintManage/'.$comManage->financial_approval_op);
		   		}
		   		else
		   		{
		   			$data['financial_approval_op'] =  null;	
		   		}
             	 

          	
          		return response()->json(['status'=>1,'message' =>'Success','result' => $data],200); 
              
            
            
          }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return response()->json([$response]);
          }
    }

    /**
	     * This is for store new Category for admin.
	     *
	     * @param  \App\Product  $product
	     * @return \Illuminate\Http\Response
	     */
	   	public function storeComFiles(Request $request)
	   	{ 

	   		 
	         
        	$validation = \Validator::make($request->all(),[ 
        		"com_manage_id" => "required",
        		"kam_id" => "required",
        		"complain_id" => "required",
        		"po_no" => "required" 
            ]);

	        if ($validation->fails()) {
	            return response()->json(['status'=>0,'errors'=>$validation->errors()],200);
	        }

	        $comManage = ComplaintManage::where('id',$request->com_manage_id)->where('kam_id',$request->kam_id)->where('complain_id',$request->complain_id)->where('po_no',$request->po_no)->first();
	         
	        if (!empty($comManage)) 
	        {
	        	# code...
	       
		        if ($request->hasFile('interim_report'))
			    {  

			    	$image = $request->interim_report; 

	                $filename = rand(1000,9999).'-'.$image->getClientOriginalName();
	                Storage::putFileAs('public/images/complaintManage/', $image, $filename);

	                $input['interim_report'] = $filename;

			    }
			    if ($request->hasFile('final_report'))
			    {
			    	$image = $request->final_report; 

	                $filename = rand(1000,9999).'-'.$image->getClientOriginalName();
	                Storage::putFileAs('public/images/complaintManage/', $image, $filename);

	                $input['final_report'] = $filename;

			    	 
			    }
			    if ($request->hasFile('capa'))
			    {
			    	$image = $request->capa; 

	                $filename = rand(1000,9999).'-'.$image->getClientOriginalName();
	                Storage::putFileAs('public/images/complaintManage/', $image, $filename);

	                $input['capa'] = $filename;

			    	 
			    }
			    if ($request->hasFile('financial_set_repo'))
			    {
			    	$image = $request->financial_set_repo; 

	                $filename = rand(1000,9999).'-'.$image->getClientOriginalName();
	                Storage::putFileAs('public/images/complaintManage/', $image, $filename);

	                $input['financial_set_repo'] = $filename; 
			    	 
			    }

			    if ($request->hasFile('sales_approval'))
			    {
			    	$image = $request->sales_approval; 

	                $filename = rand(1000,9999).'-'.$image->getClientOriginalName();
	                Storage::putFileAs('public/images/complaintManage/', $image, $filename);

	                $input['sales_approval'] = $filename; 
			    	 
			    }

			    if ($request->hasFile('marketing_head_approval'))
			    {
			    	$image = $request->marketing_head_approval; 

	                $filename = rand(1000,9999).'-'.$image->getClientOriginalName();
	                Storage::putFileAs('public/images/complaintManage/', $image, $filename);

	                $input['marketing_head_approval'] = $filename; 
			    	 
			    }

			    if ($request->hasFile('sr_gm_approval'))
			    {
			    	$image = $request->sr_gm_approval; 

	                $filename = rand(1000,9999).'-'.$image->getClientOriginalName();
	                Storage::putFileAs('public/images/complaintManage/', $image, $filename);

	                $input['sr_gm_approval'] = $filename; 
			    	 
			    }

			    if ($request->hasFile('financial_approval_op'))
			    {
			    	$image = $request->financial_approval_op; 

	                $filename = rand(1000,9999).'-'.$image->getClientOriginalName();
	                Storage::putFileAs('public/images/complaintManage/', $image, $filename);

	                $input['financial_approval_op'] = $filename; 
			    	 
			    }

			    // dd($input);

		         

		        $freightsData = ComplaintManage::where('id',$request->com_manage_id)->where('kam_id',$request->kam_id)->where('po_no',$request->po_no)->update($input);

		        // return response()->json(['sucs'=>'New category added successfully.'],200);

		   	  	return response()->json(['status'=>1,'message' =>'Data uploaded succfully.'],200);
			}
			else{
				return response()->json(['status'=>1,'message' =>'Somting went wrong','result' => []],config('global.success_status'));
			} 
	    }
}
