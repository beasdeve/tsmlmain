<?php

namespace App\Http\Controllers\Api\Modules\Bulk;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use JWTAuth;
use Validator;
use Tymon\JWTAuth\Exceptions\JWTException;
use App\Models\User;
use App\Models\Address;
use App\Models\ProductSubCategory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Reader\Csv;
use PhpOffice\PhpSpreadsheet\Reader\Xlsx;
use Response;
use Hash;
class BulkController extends Controller
{
    public function storeUser(Request $request)
    {
        $response = [];
        try{

            // ini_set('upload_max_filesize', '128M');
            // ini_set( 'post_max_size', '128M');
            // ini_set( 'max_execution_time', '300');
         if ($request->hasFile('excel'))
         {
            $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
            $spreadsheet = $reader->load($request->excel);
            $sheetData = $spreadsheet->getActiveSheet()->toArray();
            // return $sheetData;
            $removed = array_shift($sheetData);
            $data = json_encode($sheetData);

            

            foreach($sheetData as $val)
            {
                 
                if(!empty($val[14])  && !empty($val[13]))
                {

                $check_user = User::where('email',$val[14])->first();
                $check_codet = Address::where('cus_code',$val[0])->first();
                 

                if(empty($check_user))
                {                    
                     $password = 'Test@12345';
                
                
                $check_email = User::where('name',strtoupper(trim($val[2])))->first();
                // return $check_email;exit();
                if ($check_email=='') {
                $user = new User;
                $user->user_code = trim($val[0]); 
                $user->name = strtoupper(trim($val[2]));
                $user->email = $val[14];
                $user->phone = $val[13];
                $user->gstin = $val[30];
                $user->org_pan = $val[32];
                $user->password = $password;
                $user->org_name = strtoupper(trim($val[4]));
                $user->org_address = $val[5];
                $user->user_type = 'C';
                $user->login_attempt = 2;
                $user->company_pan = $val[32];
                $user->addressone = $val[12];
                $user->zone = $val[9];

                $user->save();
                }
                
                $check_gst_arr = array();
                $check_gst = Address::where('cus_code',$val[0])->get();
                $user_details = User::where('name',strtoupper(trim($val[2])))->first();
                // return $user->id;exit();
                foreach ($check_gst as $key => $value) {
                    array_push($check_gst_arr, $value->id);
                }
                // dd(count($check_gst_arr));
                if (count($check_gst_arr) < 2 && !empty($user_details)) {
                    
                    // dd($val[123]);
                // billing-address
             // if($user->user_code == $val[1])
             // {
                    $valb = strtolower($val[20]);

                    $billing = new Address;
                    $billing->user_id = $user_details->id;
                    $billing->addressone = $val[12];
                    $billing->addresstwo = $val[5];
                    $billing->city = ucwords($valb);
                    $billing->state = $val[8];
                    $billing->pincode = $val[7];
                    $billing->cityc = $val[19];
                    $billing->type = 'B';
                    $billing->company_name = strtoupper(trim($val[4]));
                    $billing->gstin =  $val[30];
                    $billing->cus_code =  $val[0];
                    $billing->country =  $val[1];
                    $billing->cust_group_name = strtoupper(trim($val[2]));
                    $billing->zone = $val[9];
                    $billing->save();
                // }
                
                // if($user->user_code != $val[1])
                // {
                // shipping-address
                // $vals = strtolower($val[55]);
                $shipping = new Address;
                $shipping->user_id = $user_details->id;
                $shipping->addressone = $val[12];
                $shipping->addresstwo = $val[5];
                $shipping->city = ucwords($valb);
                $shipping->state = $val[8];
                $shipping->pincode = $val[7];
                $shipping->cityc = $val[19];
                $shipping->type = 'A';
                $shipping->company_name = strtoupper(trim($val[4]));
                $shipping->gstin =  $val[30];
                $shipping->cus_code =  $val[0];
                $shipping->country =  $val[1];
                $shipping->cust_group_name = strtoupper(trim($val[2]));
                $shipping->zone = $val[9];
                $shipping->save();
              // }
            }
              // else{
              //       $response['success'] = false;
              //       $response['message'] = 'Same Excel File already uploaded';
              //       return Response::json($response);
              // } 
              }

              else if(!empty($check_user) && empty($check_codet))
              {
                 // dd('addr');


                    $check_gst_arr = array();
                    $check_gst = Address::where('cus_code',$val[0])->get();
                    $user_details = User::where('name',strtoupper(trim($val[2])))->first();
                // return $user->id;exit();
                    foreach ($check_gst as $key => $value) {
                        array_push($check_gst_arr, $value->id);
                    }
                // dd(count($check_gst_arr));
                  if (count($check_gst_arr) < 2 && !empty($user_details)) {
                    
                            // dd($val[123]);
                        // billing-address
                     // if($user->user_code == $val[1])
                     // {
                            $valb = strtolower($val[55]);

                            $billing = new Address;
                            $billing->user_id = $user_details->id;
                            $billing->addressone = $val[12];
                            $billing->addresstwo = $val[5];
                            $billing->city = ucwords($valb);
                            $billing->state = $val[8];
                            $billing->pincode = $val[7];
                            $billing->cityc = $val[19];
                            $billing->type = 'B';
                            $billing->company_name = strtoupper(trim($val[4]));
                            $billing->gstin =  $val[30];
                            $billing->cus_code =  $val[0];
                            $billing->country =  $val[1];
                            $billing->cust_group_name = strtoupper(trim($val[2]));
                            $billing->zone = $val[9];
                            $billing->save();

                        // }
                        
                        // if($user->user_code != $val[1])
                        // {
                        // shipping-address
                        // $vals = strtolower($val[55]);
                        $shipping = new Address;
                        $shipping->user_id = $user_details->id;
                        $shipping->addressone = $val[12];
                        $shipping->addresstwo = $val[5];
                        $shipping->city = ucwords($valb);
                        $shipping->state = $val[8];
                        $shipping->pincode = $val[7];
                        $shipping->cityc = $val[19];
                        $shipping->type = 'A';
                        $shipping->company_name = strtoupper(trim($val[4]));
                        $shipping->gstin =  $val[30];
                        $shipping->cus_code =  $val[0];
                        $shipping->country =  $val[1];
                        $shipping->cust_group_name = strtoupper(trim($val[2]));
                        $shipping->zone = $val[9];
                        $shipping->save();
                      // }
                    }
              }

              
              else{
                  

                  $userUp['org_name'] = strtoupper(trim($val[5]));
                  $userUp['org_pan'] = $val[32];
                  $userUp['gstin'] = $val[30];
                  $userUp['phone'] = $val[13];

                  User::where('id',$check_user->id)->update($userUp);
                  
                  $valb = strtolower($val[20]);

                $asddUp['addressone'] = $val[12];
                $asddUp['addresstwo'] = $val[5];
                $asddUp['cityc'] = $val[19];
                $asddUp['city'] = ucwords($valb);
                $asddUp['state'] = $val[9];
                $asddUp['pincode'] = $val[7];
                $asddUp['company_name'] = strtoupper(trim($val[4]));
                $asddUp['gstin'] =  $val[30];
                $asddUp['cus_code'] =  $val[0];
                $asddUp['country'] =  $val[1];
                $asddUp['zone'] =  $val[9];


                $add = Address::where('cus_code',$val[1])->where('user_id',$check_user->id)->update($asddUp);

                  // dd($add);

              } 
            }
                
            }

            $response['success'] = true;
            $response['message'] = 'User Uploaded Successfully';
            return Response::json($response);

         }else{
            $response['success'] = false;
            $response['message'] = 'No Excel File Found';
            return Response::json($response);
         }   
         

         
        
        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return Response::json($response);
        }
    }



    public function storeProduct(Request $request)
    {
        $response = [];
        try{
         if ($request->hasFile('excel'))
         {
            $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xls();
            $spreadsheet = $reader->load($request->excel);
            $sheetData = $spreadsheet->getActiveSheet()->toArray();
            // return $sheetData;
            $removed = array_shift($sheetData);
            $removed_2 = array_shift($removed);
            $data = json_encode($sheetData);
           
            
            foreach($sheetData as $key => $value)
            {

                if ($key!=0 && $value[5]!="") {

                    // return $value;
                    // category-division//////////////////////
                    if (@$value[4]=='HC Ferochrome Lumps') {
                        $cat_id = 1;
                    }else{
                        $cat_id = 2;
                    }

                    // code-explode//////////////////////////
                    $explode = explode('-', @$value[10]);
                    // return $explode[1];

                    // check if the code explode code exits or not
                    $check = ProductSubCategory::where('code',$explode[1])->where('sub_cat_name',$value[6])->where('plant_code',$value[0])->first();
                    // return $check;

                    
                    
                    if ($check=="") {
                        // return $value[5];
                        $sub = new ProductSubCategory;
                        $sub->plant_code = @$value[0];
                        $sub->cat_id = $cat_id;
                        $sub->pro_id = 1;
                        $sub->sub_cat_name = $value[6];
                        $sub->slug = str_slug($value[5]);
                        $sub->sub_cat_dese = @$value[10];
                        $sub->pro_size = @$value[7];
                        $sub->mat_no = @$value[9];
                        $sub->Cr = @$value[11].'-'.@$value[12];
                        $sub->C =   @$value[15].'-'.@$value[16];
                        $sub->Phos =   @$value[17].'-'.@$value[18];
                        $sub->S =   @$value[19].'-'.@$value[20];
                        $sub->Ti =   @$value[21].'-'.@$value[22];
                        $sub->Si =   @$value[13].'-'.@$value[14];
                        $sub->code = $explode[1];
                        $sub->save();

                        \DB::table('product_size_mat_no')->insert([
                            'plant_id'=>1,
                            'sub_cat_id'=>$sub->id,
                            'product_size'=>@$value[7],
                            'mat_no'=>@$value[9],
                            'plant_type'=>@$value[0],
                        ]);



                    }else{

                       if (!str_contains($check->pro_size,@$value[7])){ 
                         $des_concat = $check->sub_cat_dese.','.@$value[10];
                         $pro_concat = $check->pro_size.','.@$value[7];
                         $mat_concat = $check->mat_no.','.@$value[9];
                         $upd = [];
                         $upd['sub_cat_dese'] = $des_concat;
                         $upd['pro_size'] = $pro_concat;
                         $upd['mat_no'] = $mat_concat;
                         ProductSubCategory::where('id',$check->id)->update($upd);

                         \DB::table('product_size_mat_no')->insert([
                            'plant_id'=>1,
                            'sub_cat_id'=>$check->id,
                            'product_size'=>@$value[7],
                            'mat_no'=>@$value[9],
                            'plant_type'=>@$value[0],
                        ]);
                    }
                    
                  }

                }
            }
            $response['success'] = true;
            $response['message'] = 'Product Uploaded Successfully';
            return Response::json($response);

         }else{
            $response['success'] = false;
            $response['message'] = 'No Excel File Found';
            return Response::json($response);
         }


        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return Response::json($response);
        }    
    }
}

