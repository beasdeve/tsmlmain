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
                if(!empty($val[18])  && !empty($val[15]))
                {

                $check_user = User::where('email',$val[18])->first();
                $check_codet = Address::where('cus_code',$val[1])->first();
                // dd($check_user->user_code);

                if(empty($check_user))
                {                    
                     $password = 'Test@12345';
                
                
                $check_email = User::where('name',strtoupper(trim($val[3])))->first();
                // return $check_email;exit();
                if ($check_email=='') {
                $user = new User;
                $user->user_code = trim($val[1]); 
                $user->name = strtoupper(trim($val[3]));
                $user->email = $val[18];
                $user->phone = $val[15];
                $user->gstin = $val[126];
                $user->org_pan = $val[203];
                $user->password = $password;
                $user->org_name = strtoupper(trim($val[5]));
                $user->org_address = $val[6];
                $user->user_type = 'C';
                $user->login_attempt = 2;
                $user->company_pan = $val[200];
                $user->addressone = $val[6];
                $user->zone = $val[10];

                $user->save();
                }
                
                $check_gst_arr = array();
                $check_gst = Address::where('cus_code',$val[1])->get();
                $user_details = User::where('name',strtoupper(trim($val[3])))->first();
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
                    $billing->addressone = $val[6];
                    $billing->addresstwo = $val[14];
                    $billing->city = ucwords($valb);
                    $billing->state = $val[9];
                    $billing->pincode = $val[8];
                    $billing->cityc = $val[54];
                    $billing->type = 'B';
                    $billing->company_name = strtoupper(trim($val[5]));
                    $billing->gstin =  $val[203];
                    $billing->cus_code =  $val[1];
                    $billing->country =  $val[2];
                    $billing->cust_group_name = strtoupper(trim($val[3]));
                    $billing->save();
                // }
                
                // if($user->user_code != $val[1])
                // {
                // shipping-address
                // $vals = strtolower($val[55]);
                $shipping = new Address;
                $shipping->user_id = $user_details->id;
                $shipping->addressone = $val[6];
                $shipping->addresstwo = $val[14];
                $shipping->cityc = $val[54];
                $shipping->city = ucwords($valb);
                $shipping->state = $val[9];
                $shipping->pincode = $val[8];
                $shipping->type = 'A';
                $shipping->company_name = strtoupper(trim($val[5]));
                $shipping->gstin =  $val[203];
                $shipping->cus_code =  $val[1];
                $shipping->country =  $val[2];
                $shipping->cust_group_name = strtoupper(trim($val[3]));
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
                    $check_gst = Address::where('cus_code',$val[1])->get();
                    $user_details = User::where('name',strtoupper(trim($val[3])))->first();
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
                            $billing->addressone = $val[6];
                            $billing->addresstwo = $val[14];
                            $billing->city = ucwords($valb);
                            $billing->state = $val[9];
                            $billing->pincode = $val[8];
                            $billing->cityc = $val[54];
                            $billing->type = 'B';
                            $billing->company_name = strtoupper(trim($val[5]));
                            $billing->gstin =  $val[203];
                            $billing->cus_code =  $val[1];
                            $billing->country =  $val[2];
                            $billing->cust_group_name = strtoupper(trim($val[3]));
                            $billing->save();
                        // }
                        
                        // if($user->user_code != $val[1])
                        // {
                        // shipping-address
                        // $vals = strtolower($val[55]);
                        $shipping = new Address;
                        $shipping->user_id = $user_details->id;
                        $shipping->addressone = $val[6];
                        $shipping->addresstwo = $val[14];
                        $shipping->cityc = $val[54];
                        $shipping->city = ucwords($valb);
                        $shipping->state = $val[9];
                        $shipping->pincode = $val[8];
                        $shipping->type = 'A';
                        $shipping->company_name = strtoupper(trim($val[5]));
                        $shipping->gstin =  $val[203];
                        $shipping->cus_code =  $val[1];
                        $shipping->country =  $val[2];
                        $shipping->cust_group_name = strtoupper(trim($val[3]));
                        $shipping->save();
                      // }
                    }
              }

              
              else{
                  

                  $userUp['org_name'] = strtoupper(trim($val[5]));
                  $userUp['org_pan'] = $val[203];
                  $userUp['gstin'] = $val[126];
                  $userUp['phone'] = $val[15];

                  User::where('id',$check_user->id)->update($userUp);
                  
                  $valb = strtolower($val[55]);

                $asddUp['addressone'] = $val[6];
                $asddUp['addresstwo'] = $val[14];
                $asddUp['cityc'] = $val[54];
                $asddUp['city'] = ucwords($valb);
                $asddUp['state'] = $val[9];
                $asddUp['pincode'] = $val[8];
                $asddUp['company_name'] = strtoupper(trim($val[5]));
                $asddUp['gstin'] =  $val[203];
                $asddUp['cus_code'] =  $val[1];
                $asddUp['country'] =  $val[2];
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

