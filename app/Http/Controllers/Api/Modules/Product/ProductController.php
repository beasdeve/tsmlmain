<?php

namespace App\Http\Controllers\Api\Modules\Product;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Tymon\JWTAuth\Exceptions\JWTException;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\Models\Category;
use App\Models\Models\Product;
use App\Models\Models\ProductSubCategory;
use App\ServicesMy\AdminLogsService;
use Illuminate\Support\Str;
use JWTAuth;
use Validator;
use Response;
use File; 
use Storage; 
use DB;
use Nullix\CryptoJsAes\CryptoJsAes;

class ProductController extends Controller
{
    public function product_related()
    {
        $response = [];
        $product1 = Category::where('product_id',1)->with('getProductDetails','subCategory')->first();
       
        $product2 = Category::where('product_id',2)->with('getProductDetails','subCategory')->first();
        // $product1 = Category::where('product_id',1)->with('getProductDetails')->first();
       
        // $product2 = Category::where('product_id',2)->with('getProductDetails')->first();
        $response['success'] = true;
        $response['product_one_category'] = $product1;
        $response['product_two_category'] = $product2;
        // $response['image_url'] = 'https://beas.in/mje-shop/storage/app/public/images/product/';
        $response['image_url'] = asset('storage/app/public/images/product/');
        return $response;
    }


    /**
     * This is for display product in index page.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function productManu(Request $request)
    {
        $getproduct = Product::where('status','=',1)->get(); //1=>Active product

        if (!empty($getproduct)) 
        {
           return response()->json(['status'=>1,'message' =>'Success.','result' => $getproduct],200);
        }
        else
        {
            return response()->json(['status'=>1,'message' =>'No produ found.','result' => $getproduct],200);
        }
    }
    /**
     * This is for display product details.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function productDetails(Request $request,$proId,$catId)
    {
        $chkpro = Product::where('id',$proId)->first();
        if (!empty($chkpro)) 
        {
            
            // $data = Category::where('id',$catId)->where('product_id',$proId)->first();
            $data = DB::table('categorys')->leftjoin('products','categorys.product_id','products.id')->leftjoin('sub_categorys','categorys.id','sub_categorys.cat_id')
            ->where('categorys.status','!=',2)->where('categorys.id',$catId)->where('products.id',$proId)->select('categorys.*','products.pro_name','products.id as pid','sub_categorys.pro_size','sub_categorys.Cr','sub_categorys.C','sub_categorys.Phos','sub_categorys.S','sub_categorys.Si')->first();
            // return $data;exit();

            $prodetails['cat_id'] = $data->id;
            $prodetails['product_id'] = $data->pid;
            $prodetails['cat_name'] = $data->cat_name;
            $prodetails['slug'] = $data->slug;
            $prodetails['cat_dese'] = $data->cat_dese;
            $prodetails['is_populer'] = $data->is_populer;
            $prodetails['Cr'] = $data->Cr;
            $prodetails['C'] = $data->C;
            $prodetails['Phos'] = $data->Phos;
            $prodetails['S'] = $data->S;
            $prodetails['Si'] = $data->Si;

              $str = $data->pro_size;
              $values = [];

            $prodetail['size'] = (explode(",",$str));
            foreach ($prodetail['size'] as $key => $value) {
                $prodetails['sizes'][$key]='10-' .$value;
                array_push($values, $prodetails['sizes'][$key]);
            }
            $prodetails['sizes'] = $values;


           
            //  return $prodetails;exit();
            if ($data->primary_image) 
                {

                    $prodetails['primary_image_url'] = asset('storage/app/public/images/product/'.$data->primary_image);
                }
                else
                {
                    $prodetails['primary_image_url'] =  null;
                }
                
                if($data->image_2)
                {
                    $prodetails['image_2_url'] =  asset('storage/app/public/images/product/'.$data->image_2);
                }
                else
                {
                    $prodetails['image_2_url'] =  null; 
                }

                if($data->image_3)
                {
                    $prodetails['image_3_url'] =  asset('storage/app/public/images/product/'.$data->image_3);
                }
                else
                {
                    $prodetails['image_3_url'] =  null; 
                }

                if($data->image_4)
                {
                    $prodetails['image_4_url'] =  asset('storage/app/public/images/product/'.$data->image_4);
                }
                else
                {
                    $prodetails['image_4_url'] =  null; 
                }

                $password = "123456";
                $encrypted = CryptoJsAes::encrypt($prodetails, $password);
            
            return response()->json(['status'=>1,'message' =>'success.','result' => $encrypted],200);
        }
        else
        {
            return response()->json(['status'=>0,'message'=>'No product found'],200);
        }

    }
    /**
     * This is for display product in index page.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function indexPage($proId,$plant_id=null)
    {
        // dd('index page');
        $chkpro = Product::where('id',$proId)->first();
        if (!empty($chkpro)) 
        {
             
            $data = Category::where('product_id',$proId)->where('status','!=',2)->orderBy('id','ASC')->get();
            // dd($data);
            
            if (count($data) > 0) 
            {
                $catelist = [];
                foreach ($data as $key => $value) 
                {  
                    
                    $catdata['category_id'] = $value->id;
                    $catdata['category_name'] = $value->cat_name;
                    $catdata['is_populer'] = $value->is_populer;  
                    $catdata['product_id'] = $value->product_id;
                    $catdata['product_title'] = $value->getProductDetails->pro_name;
                    $catdata['product_slug'] = $value->getProductDetails->slug;
                    

                    if ($value->primary_image) 
                    {

                        $catdata['primary_image_url'] = asset('storage/app/public/images/product/'.$value->primary_image);
                    }
                    else
                    {
                        $catdata['primary_image_url'] =  null;
                    }

                      
                    $catelist[] = $catdata;
                } 
                return response()->json(['status'=>1,'message' =>'success.','result' => $catelist],200);
            }
            else
            {
                return response()->json(['status'=>0,'message'=>'No product found'],200);
            }  


            
        }
        else
        {
            return response()->json(['status'=>0,'message'=>'No product found'],200);
        }
        
    }
    
    
    public function popularProduct()
    {
        // dd('index page');
        // $chkpro = Product::where('id',$proId)->first();
        // if (!empty($chkpro)) 
        // {
             
            $data = Category::where('status','!=',2)->where('is_populer',1)->orderBy('id','desc')->distinct()->get();
            if (count($data) > 0) 
            {
                $catelist = [];
                foreach ($data as $key => $value) 
                {  
                    
                    $catdata['category_id'] = $value->id;
                    $catdata['category_name'] = $value->cat_name;
                    $catdata['is_populer'] = $value->is_populer;  
                    $catdata['product_id'] = $value->product_id;
                    $catdata['product_title'] = $value->getProductDetails->pro_name;
                    $catdata['product_slug'] = $value->getProductDetails->slug;
                    

                    if ($value->primary_image) 
                    {

                        $catdata['primary_image_url'] = asset('storage/app/public/images/product/'.$value->primary_image);
                    }
                    else
                    {
                        $catdata['primary_image_url'] =  null;
                    }

                      
                    $catelist[] = $catdata;
                } 
                return response()->json(['status'=>1,'message' =>'success.','result' => $catelist],200);
            }
            else
            {
                return response()->json(['status'=>0,'message'=>'No product found'],200);
            }  


            
        // }
        // else
        // {
        //     return response()->json(['status'=>0,'message'=>'No product found'],200);
        // }
        
    }

    /**
     * This is for store new product from admin.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
   public function storeProduct(Request $request)
   {
      
        $validation = \Validator::make($request->all(),[  
            "pro_name" => "required|unique:products|max:200", 
            "pro_desc" => "required|max:200",
               
        ],[  
            'pro_name.required'=>'Product name is required.',
            'pro_name.unique'=>'Product name has already been taken.',
            'pro_desc.required'=>'Product description is required.', 
        ]);

        if ($validation->fails()) {
            return response()->json(['status'=>0,'errors'=>$validation->errors()],200);
        }

         
        $input['pro_name'] = $request->pro_name;
        $input['pro_desc'] = $request->pro_desc; 
        $input['slug'] = Str::slug($request->pro_name);
        $input['manage_by'] = Auth::user()->id;
        // dd($input);

        $productData = Product::create($input); 

        $user = Auth::user()->id;
        $sub = 'Product Created';
        $purpose = 'Product Created';

        $res = (new AdminLogsService)->adminlogs($user,$sub,$purpose);

        // $response['success']['message']="New product added successfully.";
        //         return Response::json($response);

        return response()->json(['status'=>1,'message' =>'New product added successfully.','result' => $productData],200);
      
   }

   /**
     * This is for update product for admin.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function updateProduct(Request $request)
    {
        // dd($request->proId);
        $validation = \Validator::make($request->all(),[
            "proId"  =>"required",
            "pro_name" => "required|max:200|unique:products,pro_name,".$request->proId, 
            "pro_desc" => "required|max:200",
               
        ],[    
            'pro_name.required'=>'Product name is required.',
            'pro_name.unique'=>'Product name has already been taken.',
            'pro_desc.required'=>'Product description is required.', 
        ]);

        if ($validation->fails()) {
            return response()->json(['status'=>0,'errors'=>$validation->errors()],200);
        }
                
        $chkpro = Product::find($request->proId); 

            if (!empty($chkpro)) {

                // For insert new product..... 
                $input['pro_name'] = $request->pro_name;
                $input['pro_desc'] = $request->pro_desc; 
                $input['slug'] = Str::slug($request->pro_name);
                $input['manage_by'] = Auth::user()->id;
                 

                $productData = Product::where('id',$chkpro->id)->update($input); 
                $getProData = Product::where('id',$chkpro->id)->first();
                
                $user = Auth::user()->id; 
                $sub = 'Product Updated';
                $purpose = 'Product Update';

                $res = (new AdminLogsService)->adminlogs($user,$sub,$purpose);
                return response()->json(['status'=>1,'message' =>'Product updated successfully.','result' => $getProData],200);
                 
            }
            else
            {
                return response()->json(['status'=>0,'message'=>'No data found'],200);
            }

    }

   /**
     * This is for show product details before edit for admin.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function editProduct($proId)
    {
         
        $getProdct = Product::find($proId); 
         
        if (!empty($getProdct)) 
        {
            $proData['id'] = $getProdct->id; 
            $proData['product_name'] = $getProdct->pro_name;
            $proData['product_desc'] = $getProdct->pro_desc;
            $proData['slug'] =  Str::slug($getProdct->pro_name); 
            $proData['status'] = $getProdct->status; 

            return response()->json(['status'=>1,'message' =>'success','result' => $proData],200);
        }
        else{
            return response()->json(['status'=>0,'message'=>'No data found'],200);
        }
    }

    /**
     * This is for delete product for admin.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function deleteProduct($id)
    {  
        $product = Product::where('id',$id)->first();  

        if(!empty($product))
        { 
            $input['is_delete'] = 1; //1=>Delete. 
            $input['manage_by'] = Auth::user()->id;
            $updateuser = Product::where('id',$product->id)->update($input);
            return response()->json(['status'=>1,'message' =>'Product delete successfully.'],200);
      
        }
        else
        {
            return response()->json(['status'=>0,'message'=>'No data found'],200);
        }
        
    }

    /**
     * This is for show product list for admin. 
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function productList(Request $request)
    {    

        try{ 
            // dd($request->product_name);
            if($request->product_name && $request->status)
            {    
                $data = Product::orderBy('id','desc')
                                ->where('pro_name','LIKE',"%{$request->product_name}%")
                                ->where('status',$request->status)
                                ->get();
            }
            else if($request->product_name)
            { 
                $data = Product::orderBy('id','desc')
                                ->where('pro_name','LIKE',"%{$request->product_name}%") 
                                ->get();
            }
            else{
                $data = Product::orderBy('id','desc')->get();
            }
            // dd($data);
            $prolist = [];
            foreach ($data as $key => $value) 
            {   
                $prodata['product_id'] = $value->id;
                $prodata['product_title'] = $value->pro_name;
                $prodata['product_desc'] = $value->pro_desc;
                $prodata['product_status'] = $value->status; 
                  
                $prolist[] = $prodata;
            } 
              
             return response()->json(['status'=>1,'message' =>'success.','result' => $prolist],200); 
            
            }catch(\Exception $e){
                $response['error'] = $e->getMessage();
                return response()->json([$response]);
            }
    }

    /**
     * This is for active product for admin.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function activeProduct($id)
    {  
        $getProduct = Product::where('id',$id)->first();  

        if(!empty($getProduct))
        { 
            $input['status'] = 1; //2=> Inactive/1=>Active. 
            $input['manage_by'] = Auth::user()->id;
            $updateuser = Product::where('id',$getProduct->id)->update($input);

 
            return response()->json(['status'=>1,'message' =>'Product status active successfully.']);
             
        }
        else
        {
            return response()->json(['status'=>0,'message'=>'No data found'],200);
        }
        
    }

    /**
     * This is for inactive product for admin.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
    */
    public function inactiveProduct($id)
    {  
        $getProduct = Product::where('id',$id)->first();  

        if(!empty($getProduct))
        { 
            $input['status'] = 2; //2=> Inactive/1=>Active. 
            $input['manage_by'] = Auth::user()->id;
            $updateuser = Product::where('id',$getProduct->id)->update($input);
 
            return response()->json(['status'=>1,'message' =>'Product status inactive successfully.']);          
        }
        else
        {
            return response()->json(['status'=>0,'message'=>'No data found'],200);
        }
        
    }

    public function productFilter(Request $request)
    {

        $response = [];
        $data = [];


        $data['data'] = Category::with('getProductDetails')->where('status',1)->orderBy('id','asc');


        if(@$request->product_id)
        {
            $product_id = $request->product_id;
            $data['data'] = $data['data']->where('product_id', $product_id);
            $response['getCategory'] = Category::where('status','!=',2)->select('id','cat_name')->where('product_id',request('product_id'))->orderBy('id','desc')->get();
            $response['subCategories'] = ProductSubCategory::where('pro_id',$request->product_id)->get();
        }


        if(@$request->cat_id){
            $catId = $request->cat_id;
            $data['data'] = $data['data']->where('id', $catId);
            $response['subCategories'] = ProductSubCategory::where('cat_id',$request->cat_id)->get();
         }


        if (@$request->subcat_id) {

            $data['data'] = $data['data']->whereHas('subCategory',function($query){
                $query->where('id',request('subcat_id'));
            });
        }

        if (@$request->plant_id) {
            
            $data['data'] = $data['data']->whereHas('subCategory',function($query){
                $get_plant_code = \DB::table('plants')->where('id',request('plant_id'))->first();
                $query->where('plant_code',$get_plant_code->type_2);
            });
        }

        if (@$request->prosize) 
        {
            // $val = [100,250];
            // $pluck = $data['data']->pluck('id');
            if (@$request->subcat_id) {
                $filtered_data =ProductSubCategory::where('cat_id',request('cat_id'))->where('id',request('subcat_id'))->get();
            }else{
                $category = $data['data']->pluck('id');
                $filtered_data =ProductSubCategory::whereIn('cat_id',$category)->get();
            }

            // return $filtered_data;



            
            
            $max_value = max(@$request->prosize);
            // $min_value = min(@$val);
            $numbers = range(10,$max_value);
            // return $numbers;
            
                $array = [];
                foreach($filtered_data as $size)
                {
                    $explode = explode(',',$size->pro_size);
                    $max_size = max($explode);
                    // return $max_size;
                    if (in_array($max_size, $numbers)) {
                        array_push($array, $size->cat_id);  
                    }
                }
            

           $now_category = Category::with('getProductDetails')->where('status',1)->orderBy('id','desc')->whereIn('id',$array);
           $data['data'] = $now_category;

        }

        if (@$request->sort) {
            if (@$request->sort=="N") {
                $data['data'] = $data['data']->orderBy('id','desc');
            }else{
                $data['data'] = $data['data']->orderBy('id','asc');
            }
        }

        $data['data'] = $data['data']->get();

        $response['success'] = true;
        $response['data'] = $data['data'];
        $response['getProductList'] = Product::where('status',1)->select('id','pro_name')->get();
        
        $response['image_url'] = 'https://beas.in/mje-shop/storage/app/public/images/product/';
        return $response;

        // return response()->json(['status'=>1,'message' =>'Success.','result' => $data,'subCategories'=>$subCategories],200);

    }

    public function ProductDropdown(){

        $getProductList = Product::where('status',1)->select('id','pro_name')->get();  
        return Response::json($getProductList);

    }

    public function CategoryDropdown(){
        $data = Category::where('status','!=',2)->select('id','cat_name')->orderBy('id','desc')->get();
        return Response::json($data);

    }


    public function sub_cat_details($subId)
    {

            // $data = Category::where('id',$catId)->where('product_id',$proId)->first();
            $data = DB::table('sub_categorys')
            ->where('id',$subId)->first();
            // return $data->pro_size;exit();

              $str = $data->pro_size;
              $values = [];

            $prodetail['size'] = (explode(",",$str));

            
            foreach ($prodetail['size'] as $key => $value) {
                $prodetails['sizes'][$key]= $value;
                array_push($values, $prodetails['sizes'][$key]);
            }
            
        
            $prodetails['sizes'] = $values;


            $password = "123456";
            $encrypted = CryptoJsAes::encrypt($prodetails, $password);
            
            return response()->json(['status'=>1,'message' =>'success.','result' => $prodetails],200);

    }



   public function subcatFilter(Request $request)
    {
       
        if(!empty($request->plant_id))
        {

             $plant = DB::table('plants')->where('id',$request->plant_id)->first();
        }
      
            $variable = DB::table('products')->leftjoin('sub_categorys','products.id','sub_categorys.pro_id')->where('products.id',$request->product_id);
         // dd($plant->type_2);
        if(!empty($plant->type_2))
        {

             $variable = $variable->where('sub_categorys.plant_code',$plant->type_2);
        }
        else if(empty($plant->type_2))
        {
            $variable = $variable->groupBy('sub_categorys.sub_cat_name');
        }
             $variable = $variable->orderBy('sub_categorys.id','asc')->select('sub_categorys.*','products.id as pid','products.pro_name')->get();
        $data = array();
             foreach ($variable as $key => $value) {
                  
                 $data[$key]['id'] = $value->id;
                 $data[$key]['pro_id'] = $value->pid;
                 $data[$key]['sub_cat_name'] = $value->sub_cat_name;
                 $data[$key]['sub_cat_dese'] = $value->sub_cat_dese;
                 $data[$key]['pro_size'] = $value->pro_size;
                 $data[$key]['code'] = $value->code;
                 $data[$key]['plant_code'] = $value->plant_code;


             }
              




            
            return response()->json(['status'=>1,'message' =>'success.','result' => $data],200);

    }

     
}
