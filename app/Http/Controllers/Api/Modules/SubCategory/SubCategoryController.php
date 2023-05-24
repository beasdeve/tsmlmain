<?php

  namespace App\Http\Controllers\Api\Modules\SubCategory;

  use Illuminate\Http\Request;
  use App\Http\Controllers\Controller;
  use Tymon\JWTAuth\Exceptions\JWTException;
  use Maatwebsite\Excel\Facades\Excel;
  use PhpOffice\PhpSpreadsheet\Spreadsheet;
  use PhpOffice\PhpSpreadsheet\Reader\Exception;
  use PhpOffice\PhpSpreadsheet\Writer\Xls;
  use PhpOffice\PhpSpreadsheet\IOFactory;
  use PhpOffice\PhpSpreadsheet\Reader\Csv;
  use Illuminate\Support\Facades\Auth;
  use Illuminate\Support\Str; 
  use App\Models\Models\Category;
  use App\Models\Models\ProductSubCategory;
  use App\Exports\ThresholdExport;
  use App\Models\User;
  use App\Models\Models\Product; 
  use App\Models\Models\PriceManagement;
  use App\Models\Models\PriceCalculation;
  use App\Models\Models\ThresholdLimits;
  use App\Models\Models\Freights; 
  use App\ServicesMy\AdminLogsService;
  use File; 
  use Storage;
  use Response;
  use DB; 
  use JWTAuth;
  use Validator; 
     

    class SubCategoryController extends Controller
    {
 

      /* This is for import excel sub category for admin . 
       * @param  \App\Product  $product
       * @return \Illuminate\Http\Response
      */
      public function importSubCatExcelAdmin(Request $request)
      { 
            try{ 
                $excel = $request->subcatfile;

                if($excel)
                { 
                    $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
                    $spreadsheet = $reader->load($request->subcatfile);
                    $sheetData = $spreadsheet->getActiveSheet()->toArray();
                     
                    $removed = array_shift($sheetData);
                    $data = json_encode($sheetData);

                    foreach($sheetData as $k => $val)
                    {
                       $product_id = Product::where('pro_name',trim($val[0]))->first();
                       $category_id = Category::where('cat_name',trim($val[1]))->first();
                       

                       if(!empty($product_id) && !empty($category_id)){
                      
                        
                        $res = ProductSubCategory::where('sub_cat_name',trim($val[2]))
                                                    ->where('pro_id',$product_id->id)
                                                    ->where('cat_id',$category_id->id)
                                                    ->where('plant_code',$val[11])
                                                    ->first();

                       
                         $input = array(); 

                         if(empty($res))   
                         {  
                             
                            $input['pro_id'] = $product_id->id;
                            $input['cat_id'] = $category_id->id;
                            $input['sub_cat_name'] = $val[2];
                            $input['slug'] = Str::slug($val[2]);
                            $input['sub_cat_dese'] = $val[3];
                            $input['pro_size'] = $val[4];
                            $input['Cr'] = $val[5];
                            $input['C'] = $val[6];
                            $input['Phos'] = $val[7];
                            $input['S'] = $val[8];
                            $input['Si'] = $val[9];
                            $input['Ti'] = $val[10];
                            $input['plant_code'] = $val[11];
                            
                            
                            
                             $d= explode(',', $val[4]);
                             $matcode = explode(',', $val[12]);
                             // dd(count($d),count($matcode));
                             if(count($d) == count($matcode)){

                             $sub_cat = ProductSubCategory::create($input);


                             foreach ($d as $key => $value) {
                                 
                                 $arr['plant_id'] = 1;
                                 $arr['plant_type'] = $val[11];
                                 $arr['sub_cat_id'] = $sub_cat->id;
                                 $arr['product_size'] = $value;
                                 $arr['mat_no'] = $matcode[$key];

                                 DB::table('product_size_mat_no')->insert($arr);

                             }
                           }else{

                              return response()->json(['status'=>0,
                                        'message' =>'error',
                                        'result' => 'Please match sizes and material codes'],
                                        config('global.success_status'));
                           }


                            // dd($sub_cat->id);


                       }
                       else{    
                            
                            $input['pro_id'] = $product_id->id;
                            $input['cat_id'] = $category_id->id;
                            $input['sub_cat_name'] = $val[2];
                            $input['slug'] = Str::slug($val[2]);
                            $input['sub_cat_dese'] = $val[3];
                            $input['pro_size'] = $val[4];
                            $input['Cr'] = $val[5];
                            $input['C'] = $val[6];
                            $input['Phos'] = $val[7];
                            $input['S'] = $val[8];
                            $input['Si'] = $val[9];
                            $input['Ti'] = $val[10];
                            $input['plant_code'] = $val[11];
                                

                              ProductSubCategory::where('pro_id',$product_id->id)->where('cat_id',$category_id->id)->where('id',$res->id)->update($input);


                              $d= explode(',', $val[4]);
                             $matcode = explode(',', $val[12]);


                             foreach ($d as $key => $value) {
                                 
                                 
                                 $chkmatcode = DB::table('product_size_mat_no')->where('sub_cat_id',$res->id)->where('product_size',$value)->where('plant_type',$val[11])->first();

                                 if(!empty($chkmatcode))
                                 {

                      
                                 $arr['mat_no'] = $matcode[$key];

                                 DB::table('product_size_mat_no')->where('sub_cat_id',$res->id)->where('product_size',$value)->where('plant_type',$val[11])->update($arr);
                               }
                               else{

                                     $arrup['plant_id'] = 1;
                                     $arrup['plant_type'] = $val[11];
                                     $arrup['sub_cat_id'] = $res->id;
                                     $arrup['product_size'] = $value;
                                     $arrup['mat_no'] = $matcode[$key];

                                     DB::table('product_size_mat_no')->insert($arrup);
                               }

                             }
                       }
                        
                     }else{ 
                          return response()->json(['status'=>0,
                                        'message' =>'error',
                                        'result' => 'Please check given details'],
                                        config('global.success_status'));
                      }
                    
                    }
                    }

                    return response()->json(['status'=>1,
                      'message' =>'success',
                      'result' => 'Sub category added successfully.'],
                      config('global.success_status'));
               


              }catch(\Exception $e){

               return response()->json(['status'=>0,'message' =>'error','result' => $e->getMessage()],config('global.failed_status'));
            }
        }
 
         
         

        /**
         * This is for store new Sub Category for admin.
         *
         * @param  \App\Product  $product
         * @return \Illuminate\Http\Response
         */
       public function storeSubCategory(Request $request)
       { 
        // $mt = implode(",",$request->mat);
        // $mt3 = explode(',',$mt);
        // dd($mt3);
            $cataId = $request->cat_id;
            $chkcata = Category::where('id',$cataId)->first();


                $validation = \Validator::make($request->all(),[ 
                "cat_id" => "required|numeric",
                "pro_id" => "required|numeric",
                "sub_cat_name" => "required|unique:sub_categorys|max:200",
                "sub_cat_dese" => "required|max:200", 
                "pro_size" => "required|max:200",
                ],[ 
                    'cat_id.required'=>'Category id is required.',
                    'pro_id.required'=>'Product id is required.',
                    'sub_cat_name.required'=>'Sub category name is required.',
                    'sub_cat_name.unique'=>'Sub category already exists.',
                    'sub_cat_dese.required'=>'Sub category description required.',
                    'pro_size.required'=>'Product size required.',  
                ]);

                if ($validation->fails()) {
                    return response()->json(['status'=>0,'errors'=>$validation->errors()],200);
                }        
                 
                if (!empty($chkcata)) {
                    $input['cat_id'] = $request->cat_id;
                    $input['pro_id'] = $request->pro_id;
                    $input['sub_cat_name'] = $request->sub_cat_name;
                    $input['slug'] = Str::slug($request->sub_cat_name);
                    $input['sub_cat_dese'] = $request->sub_cat_dese;
                    $input['pro_size'] = implode(",",$request->pro_size);
                    $input['Cr'] = $request->Cr;
                    $input['C'] = $request->C;
                    $input['Phos'] = $request->Phos;
                    $input['S'] = $request->S;
                    $input['Si'] = $request->Si;
                    $input['Ti'] = $request->Ti;
                    $input['plant_code'] = $request->plant_code;
                    // dd($input);
                    $subCategoryData = ProductSubCategory::create($input);  
                    $mt = implode(",",$request->mat);
                    $mt3 = explode(',',$mt);
                    $psize1 = implode(",",$request->pro_size);
                    $psize2 = explode(',',$psize1);
                    foreach ($mt3 as $key => $value) 
                    {
                      $dv['plant_id'] = 1;
                      $dv['plant_type'] = $request->plant_code;
                      $dv['sub_cat_id'] = $subCategoryData->id;
                      $dv['product_size'] = $psize2[$key];
                      $dv['mat_no'] = $value;
                      $ins = DB::table('product_size_mat_no')->insert($dv);
                    }

                    return response()->json(['status'=>1,'message' =>'New sub category added successfully.','result' => $subCategoryData],200);
                    
                    } 
                 
                else{
                    return response()->json(['status'=>0,'message'=>'No category found'],200);
                }
             

            
       }

        /**
         * This is for update sub category for admin. 
         * @param  \App\Product  $product
         * @return \Illuminate\Http\Response
        */
        public function updateSubCategory(Request $request)
        {

            $cataId = $request->cat_id;
            $chkcata = Category::where('id',$cataId)->first();

               

                $validation = \Validator::make($request->all(),[ 
                    "cat_id" => "required|numeric",
                    "pro_id" => "required|numeric",                  
                    "sub_cat_id" => "required|numeric",
                    "sub_cat_name" => "required|max:200|unique:sub_categorys,sub_cat_name,".$request->sub_cat_id,
                    "sub_cat_dese" => "required|max:200", 
                    "pro_size" => "required|max:200",
                ],[ 
                    'cat_id.required'=>'Category id is required.',
                    'pro_id.required'=>'Product id is required.',
                    'sub_cat_id.required'=>'Sub category id is required.',
                    'sub_cat_name.required'=>'Sub category name is required.',
                    'sub_cat_name.unique'=>'Sub category already exists.',
                    'sub_cat_dese.required'=>'Sub category description required.', 
                    'pro_size.required'=>'Product size required.',
                ]);

                if ($validation->fails()) {
                    return response()->json(['status'=>0,'errors'=>$validation->errors()],200);
                }

                // dd($request->pro_size);
                
                 
                if (!empty($chkcata)) {
                     
                    $updateSubCat['cat_id'] = $request->cat_id;
                    $updateSubCat['pro_id'] = $request->pro_id;
                    $updateSubCat['sub_cat_name'] = $request->sub_cat_name;
                    $updateSubCat['slug'] = Str::slug($request->sub_cat_name);
                    $updateSubCat['sub_cat_dese'] = $request->sub_cat_dese;
                    $updateSubCat['pro_size'] = implode(",",$request->pro_size);
                    $updateSubCat['Cr'] = $request->Cr;
                    $updateSubCat['C'] = $request->C;
                    $updateSubCat['Phos'] = $request->Phos;
                    $updateSubCat['S'] = $request->S;
                    $updateSubCat['Si'] = $request->Si;
                    $updateSubCat['Ti'] = $request->Ti;

                    $subCategoryData = ProductSubCategory::where('id',$request->sub_cat_id)->update($updateSubCat); 

                    $delmatno = DB::table('product_size_mat_no')->where('plant_type',$request->plant_code)->where('sub_cat_id',$request->sub_cat_id)->delete();

                    $mt = implode(",",$request->mat);
                    $mt3 = explode(',',$mt);
                    $psize1 = implode(",",$request->pro_size);
                    $psize2 = explode(',',$psize1);
                    foreach ($mt3 as $key => $value) 
                    {
                      $dv['plant_id'] = 1;
                      $dv['plant_type'] = $request->plant_code;
                      $dv['sub_cat_id'] = $request->sub_cat_id;
                      $dv['product_size'] = $psize2[$key];
                      $dv['mat_no'] = $value;
                      $ins = DB::table('product_size_mat_no')->insert($dv);
                    }
                    
                    $subCatData = ProductSubCategory::where('id',$request->sub_cat_id)->first();             

                    return response()->json(['status'=>1,'message' =>'Sub category update successfully.','result' => $subCatData],200);
                     
                } 
            else
            {
                    return response()->json(['status'=>0,'message'=>'No category found'],200);
            }
            
        }

       /**
         * This is for show sub category list for admin. 
         * @param  \App\Product  $product
         * @return \Illuminate\Http\Response
        */
        public function subCategoryList(Request $request)
        {   

            try{         
                $data = ProductSubCategory::where('status','!=',3)->with('getCategoryDetails')->orderBy('id','desc')->get();

                $subcatdata = [];
                    foreach ($data as $key => $value) 
                    {

                      $catadata['sub_category_id'] = $value->id;
                      $catadata['sub_category_name'] = $value->sub_cat_name;
                      $catadata['sub_category_slug'] = $value->slug;
                      $catadata['sub_category_desc'] = $value->sub_cat_dese;
                      $catadata['sub_category_status'] = $value->status;
                      $catadata['category_id'] = $value->getCategoryDetails->id;
                      $catadata['category_name'] = $value->getCategoryDetails->cat_name;
                      $catadata['product_id'] = $value->pro_id;
                      $catadata['product_name'] = $value->getCategoryDetails->getProductDetails->pro_name;
                  
                        $subcatdata[] = $catadata;
                    } 
              
             return response()->json(['status'=>1,'message' =>'success.','result' => $subcatdata],200);
             // return response()->json(['status'=>1,$response],200);
              
            
            }catch(\Exception $e){
                $response['error'] = $e->getMessage();
                return response()->json([$response]);
            }
        }

        /**
         * This is for show sub category details before edit for admin.
         *
         * @param  \App\Product  $product
         * @return \Illuminate\Http\Response
        */
        public function editSubCategory($subCatId)
        {
             
            $catData = ProductSubCategory::find($subCatId);

            if (!empty($catData)) 
            {
                $catadetails['plant_code'] = $catData->plant_code;
                $catadetails['sub_category_id'] = $catData->id;
                $catadetails['sub_category_name'] = $catData->sub_cat_name;
                $catadetails['sub_category_slug'] = $catData->slug;
                $catadetails['sub_category_desc'] = $catData->sub_cat_dese;
                $catadetails['sub_category_status'] = $catData->status;
                $catadetails['category_id'] = $catData->getCategoryDetails->id;
                $catadetails['category_name'] = $catData->getCategoryDetails->cat_name;
                $catadetails['product_id'] = $catData->pro_id;
                $catadetails['product_name'] = $catData->getCategoryDetails->getProductDetails->pro_name; 
                $catadetails['Cr'] = $catData->Cr;
                $catadetails['C'] = $catData->C;
                $catadetails['Phos'] = $catData->Phos;
                $catadetails['S'] = $catData->S;
                $catadetails['Si'] = $catData->Si;
                $catadetails['Ti'] = $catData->Ti;
                $getsize = explode(",",$catData->pro_size);
                 

                
                $result = []; 
                $mat_no_up = [];

                foreach($getsize as $key => $element){
                  $result[$key]['from'] = current(explode("-",$element));
                  $result[$key]['to'] = substr($element, strrpos($element, '-') + 1);
                  $size = $result[$key]['from'].'-'.$result[$key]['to'];
                  $result[$key]['mat_no'] = $this->getMatNo($catData->id,$catData->plant_code,$size);
                  array_push($mat_no_up,$this->getMatNo($catData->id,$catData->plant_code,$size));
                }



                $catadetails['size'] = $getsize;
                $catadetails['pro_size'] = $result;
                $catadetails['mat'] = $mat_no_up; 
                
                

 
                return response()->json(['status'=>1,'message' =>'success','result' => $catadetails],200);
            }
            else{
                return response()->json(['status'=>0,'message'=>'No data found'],200);
            }
        }

        /**
         * This is get material number for subcategory size in admin.
         *
         * @param  \App\Product  $product
         * @return \Illuminate\Http\Response
         */
        public function getMatNo($subcatid,$planttype,$size)
        {
          $getmetno = DB::table('product_size_mat_no')->where('sub_cat_id',$subcatid)->where('plant_type',$planttype)->where('product_size',$size)->first();
          
          return $getmetno->mat_no;
        }
 
        /**
         * This is for inactive sub category for admin.
         *
         * @param  \App\Product  $product
         * @return \Illuminate\Http\Response
         */
        public function inactiveSubCategory($id)
        {  
            $subCategory = ProductSubCategory::where('id',$id)->first();  

            if(!empty($subCategory))
            { 
                $input['status'] = 2; //2=> Inactive/1=>Active. 

                $updateuser = ProductSubCategory::where('id',$subCategory->id)->update($input);

     
                return response()->json(['status'=>1,'message' =>'Sub category status inactive successfully.']);
                 
            }
            else
            {
                return response()->json(['status'=>0,'message'=>'No data found'],200);
            }
            
        }

        /**
         * This is for active sub category for admin.
         *
         * @param  \App\Product  $product
         * @return \Illuminate\Http\Response
         */
        public function activeSubCategory($id)
        {  
            $subCategory = ProductSubCategory::where('id',$id)->first();  

            if(!empty($subCategory))
            { 
                $input['status'] = 1; //2=> Inactive/1=>Active. 

                $updateuser = ProductSubCategory::where('id',$subCategory->id)->update($input);

     
                return response()->json(['status'=>1,'message' =>'Sub category status active successfully.']);
                 
            }
            else
            {
                return response()->json(['status'=>0,'message'=>'No data found'],200);
            }
            
        }

         /**
         * This is for delete sub category for admin.
         *
         * @param  \App\Product  $product
         * @return \Illuminate\Http\Response
         */
        public function deleteSubCategory($id)
        {  
          // dd($id);
            $subCategory = ProductSubCategory::where('id',$id)->first();  

            if(!empty($subCategory))
            { 
                $input['status'] = 3; //2=> Inactive/1=>Active/3=>Delete. 

                $updateuser = ProductSubCategory::where('id',$subCategory->id)->update($input);

     
                return response()->json(['status'=>1,'message' =>'Sub category deleted successfully.']);
                 
            }
            else
            {
                return response()->json(['status'=>0,'message'=>'No data found'],200);
            }
            
        }

        

         
    }
