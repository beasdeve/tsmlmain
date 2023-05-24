<?php

	namespace App\Http\Controllers\Api\Modules\Category;

	use Illuminate\Http\Request;
	use App\Http\Controllers\Controller;
	use Tymon\JWTAuth\Exceptions\JWTException;
	use Illuminate\Support\Facades\Auth;
	use App\Models\User;
	use App\Models\Models\Category;
	use App\Models\Models\ProductSubCategory;
	use Illuminate\Support\Str;
	use JWTAuth;
	use Validator;
	use File; 
	use Storage;
	use Response; 



	class CategoryController extends Controller
	{
	    /**
	     * This is for store new Category for admin.
	     *
	     * @param  \App\Product  $product
	     * @return \Illuminate\Http\Response
	     */
	   	public function storeCategory(Request $request)
	   	{ 

	   		// dd($request->all());
	         
        	$validation = \Validator::make($request->all(),[ 
        		"product_id" => "required|numeric",
                "cat_name" => "required|unique:categorys|max:200",
                "cat_dese" => "required|max:200",
                "primary_image" => "mimes:jpg,jpeg,png",
                // "image_2" => "mimes:jpg,jpeg,png",
                // "image_3" => "mimes:jpg,jpeg,png",
                // "image_4" => "mimes:jpg,jpeg,png",
            ],[ 'product_id.required'=>'Product id is required.',
            	'cat_name.required'=>'Category name is required.',
            	'cat_name.unique'=>'Category already exists.',
                'cat_dese.required'=>'Category description required.', 
            ]);

	        if ($validation->fails()) {
	            return response()->json(['status'=>0,'errors'=>$validation->errors()],200);
	        }

	        $input['product_id'] = $request->product_id;
	        $input['cat_name'] = $request->cat_name;
	        $input['cat_dese'] = $request->cat_dese;
	        $input['slug'] = Str::slug($request->cat_name);
	        $input['manage_by'] = Auth::user()->id;
	        
	        if ($request->hasFile('primary_image'))
		    {  

		    	$image = $request->primary_image; 

                $filename = str_replace(' ', '_',$request->cat_name).'-'.time().'-'.rand(1000,9999).'.'.$image->getClientOriginalExtension();

                // $filename = rand(1000,9999).'-'.$image->getClientOriginalName();

                Storage::putFileAs('public/images/product/', $image, $filename);

                $input['primary_image'] = $filename;

		    }
		    if ($request->hasFile('image_2'))
		    {
		    	$image = $request->image_2; 

                $filename = str_replace(' ', '_',$request->cat_name).time().'-'.rand(1000,9999).'.'.$image->getClientOriginalExtension();
                Storage::putFileAs('public/images/product/', $image, $filename);

                $input['image_2'] = $filename;

		    	 
		    }
		    if ($request->hasFile('image_3'))
		    {
		    	$image = $request->image_3; 

                $filename = str_replace(' ', '_',$request->cat_name).time().'-'.rand(1000,9999).'.'.$image->getClientOriginalExtension();
                Storage::putFileAs('public/images/product/', $image, $filename);

                $input['image_3'] = $filename;

		    	 
		    }
		    if ($request->hasFile('image_4'))
		    {
		    	$image = $request->image_4; 

                $filename = str_replace(' ', '_',$request->cat_name).time().'-'.rand(1000,9999).'.'.$image->getClientOriginalExtension();
                Storage::putFileAs('public/images/product/', $image, $filename);

                $input['image_4'] = $filename; 
		    	 
		    }

		    // dd($input);

	        $categoryData = Category::create($input); 

	        // return response()->json(['sucs'=>'New category added successfully.'],200);

	   	  	return response()->json(['status'=>1,'message' =>'New category added successfully.','result' => $categoryData],200);
			 
	    }

	    /**
	     * This is for show category list for admin. 
	     * @param  \App\Product  $product
	     * @return \Illuminate\Http\Response
	    */
	    public function categoryList(Request $request)
	    {
	    	 
	        $response = [];
	        try{         
	        // $data = Category::orderBy('id','desc')->get();
	        // dd($request->all());
	        if($request->cat_name && $request->status)
            {      
                $data = Category::orderBy('id','desc')
                                ->where('cat_name','LIKE',"%{$request->cat_name}%")
                                ->where('status',$request->status)
                                ->get();
            }
            else if($request->cat_name)
            { 	 
                $data = Category::orderBy('id','desc')
                                ->where('cat_name','LIKE',"%{$request->cat_name}%") 
                                ->get();
            }
            else{
            	 
                $data = Category::orderBy('id','desc')->get();
            }

            // dd($data);

	        $catelist = [];
	            foreach ($data as $key => $value) 
	            {  
		            
		            $catdata['category_id'] = $value->id;
	              	$catdata['category_name'] = $value->cat_name; 
	              	$catdata['category_desc'] = $value->cat_dese;
	              	$catdata['product_id'] = $value->product_id;
		            $catdata['product_title'] = $value->getProductDetails->pro_name;
		            $catdata['product_slug'] = $value->getProductDetails->slug;
		            $catdata['status'] = $value->status;

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
	          
	        
	        }catch(\Exception $e){
	            $response['error'] = $e->getMessage();
	            return response()->json([$response]);
	        }
	    }
	   		

	   	/**
	     * This is for show category details before edit for admin.
	     *
	     * @param  \App\Product  $product
	     * @return \Illuminate\Http\Response
	    */
	   	public function editCategory($catId)
	   	{
	   		 
	   		$catData = Category::find($catId);

	   		if (!empty($catData)) 
	   		{
	   			  
		            
	           	$catdetails['category_id'] = $catData->id;
              	$catdetails['category_name'] = $catData->cat_name; 
              	$catdetails['product_id'] = $catData->product_id;
	            $catdetails['product_title'] = $catData->getProductDetails->pro_name;
	            $catdetails['product_slug'] = $catData->getProductDetails->slug;
	            $catdetails['cat_dese'] = $catData->cat_dese;

		   		if ($catData->primary_image) 
		   		{
		   			$catdetails['primary_image_url'] = asset('storage/app/public/images/product/'.$catData->primary_image);
		   		}
		   		else
		   		{
		   			$catdetails['primary_image_url'] =  null;
		   		}
		   		
		   		// if($catData->image_2)
		   		// {
		   		// 	$catdetails['image_2_url'] =  asset('storage/app/public/images/product/'.$catData->image_2);
		   		// }
		   		// else
		   		// {
		   		// 	$catdetails['image_2_url'] =  null;	
		   		// }

		   		// if($catData->image_3)
		   		// {
		   		// 	$catdetails['image_3_url'] =  asset('storage/app/public/images/product/'.$catData->image_3);
		   		// }
		   		// else
		   		// {
		   		// 	$catdetails['image_3_url'] =  null;	
		   		// }

		   		// if($catData->image_4)
		   		// {
		   		// 	$catdetails['image_4_url'] =  asset('storage/app/public/images/product/'.$catData->image_4);
		   		// }
		   		// else
		   		// {
		   		// 	$catdetails['image_4_url'] =  null;	
		   		// } 

	   			return response()->json(['status'=>1,'message' =>'success','result' => $catdetails],200); 
 
	   		}
	   		else{
	   			return response()->json(['status'=>0,'message'=>'No data found'],200);
	   		}
	   	}

	   	/**
	     * This is for update category for admin.
	     *
	     * @param  \App\Product  $product
	     * @return \Illuminate\Http\Response
	    */

		   	public function updateCategory(Request $request)
		   	{
				// dd($request->all());
			   	try{
				   $srch_reg = Category::where('id',$request->cat_id)->first();
				    
				   if($srch_reg)
				   { 
				   
				   	$validation = \Validator::make($request->all(),[ 
	        		"product_id" => "required|numeric",
	                "cat_name" => 'required|max:200|unique:categorys,cat_name,'.$srch_reg->id, 
	                "cat_dese" => "required|max:200", 
		            ],[ 'product_id.required'=>'Product id is required.',
		            	'cat_name.required'=>'Category name is required.',
		            	'cat_name.unique'=>'Category already exists.',
		                'cat_dese.required'=>'Category description required.', 
		            ]);

			        if ($validation->fails()) {
			            return response()->json(['status'=>0,'errors'=>$validation->errors()],200);
			        }

			        $updatecat['product_id'] = $request->product_id;
			        $updatecat['cat_name'] = $request->cat_name;
			        $updatecat['cat_dese'] = $request->cat_dese;
			        $updatecat['slug'] = Str::slug($request->cat_name);
			        $updatecat['manage_by'] = Auth::user()->id;
			        
			        
			         
			        if ($request->hasFile('primary_image'))
				    {
				    	 
				    	// @unlink(storage_path('app/public/images/product/'.$srch_reg->primary_image)); 

				    	$image = $request->primary_image;
		                $filename = str_replace(' ', '_',$request->cat_name).'-'.time().'-'.rand(1000,9999).'.'.$image->getClientOriginalExtension(); 
		                Storage::putFileAs('public/images/product/', $image, $filename);
		                $updatecat['primary_image'] = $filename;
				    	 
				    }
				    // if ($request->hasFile('image_2'))
				    // {
				    // 	@unlink(storage_path('app/public/images/product/'.$srch_reg->image_2)); 

				    // 	$image = $request->image_2;
		      //           $filename =  str_replace(' ', '_',$request->cat_name).time().'-'.rand(1000,9999).'.'.$image->getClientOriginalExtension();
		      //           Storage::putFileAs('public/images/product/', $image, $filename);
		      //           $updatecat['image_2'] = $filename;

				    	 
				    // }
				    // if ($request->hasFile('image_3'))
				    // {	
				    // 	@unlink(storage_path('app/public/images/product/'.$srch_reg->image_3)); 

				    // 	$image = $request->image_3;
		      //           $filename =  str_replace(' ', '_',$request->cat_name).time().'-'.rand(1000,9999).'.'.$image->getClientOriginalExtension();
		      //           Storage::putFileAs('public/images/product/', $image, $filename);
		      //           $updatecat['image_3'] = $filename; 
				    	 
				    // }
				    // if ($request->hasFile('image_4'))
				    // {
				    // 	@unlink(storage_path('app/public/images/product/'.$srch_reg->image_4)); 

				    // 	$image = $request->image_4;
		      //           $filename =  str_replace(' ', '_',$request->cat_name).time().'-'.rand(1000,9999).'.'.$image->getClientOriginalExtension();
		      //           Storage::putFileAs('public/images/product/', $image, $filename);
		      //           $updatecat['image_4'] = $filename; 
	 
				    // }



			        $categoryData = Category::where('id',$srch_reg->id)->update($updatecat); 

			        $catData = Category::where('id',$srch_reg->id)->first();

			        // return response()->json(['sucs'=>'New category added successfully.'],200);

			   	  	return response()->json(['status'=>1,'message' =>'Category updated successfully.'],200);

				    
				   }
				   else
				   {
					   $response['error']['message'] = "This id does not exists for update";
					   return Response::json($response);
				   }
				  
				   
				} catch (\Throwable $th) {
				   $response['error']['message'] = $th->getMessage();
				   return Response::json($response);
				} 
		   }

	   	/**
	     * This is for inactive category for admin.
	     *
	     * @param  \App\Product  $product
	     * @return \Illuminate\Http\Response
	     */
	    public function inactiveCategory($id)
	    {  
	        $category = Category::where('id',$id)->first();  

	        if(!empty($category))
	        {
	        	$checkForUse = ProductSubCategory::where('cat_id',$category->id)->get();

	        	 
	        	if (!empty($checkForUse)) {
	        		$input['status'] = 2; //2=> Inactive/1=>Active. 
	        		$input['manage_by'] = Auth::user()->id;
	            	$updateuser = Category::where('id',$category->id)->update($input);

	     
	            	return response()->json(['status'=>1,'message' =>'Category status inactive successfully.']);
	        	}
	        	else{
	        		return response()->json(['status'=>1,'message' =>'You can not inactive this category it is in use !!!']);        		 
	        	} 
	        }
	        else
	        {
	            return response()->json(['status'=>0,'message'=>'No data found'],200);
	        }
	        
	    }

	    /**
	     * This is for active category for admin.
	     *
	     * @param  \App\Product  $product
	     * @return \Illuminate\Http\Response
	     */
	    public function activeCategory($id)
	    {  
	        $category = Category::where('id',$id)->first();  

	        if(!empty($category))
	        {
	        	$input['status'] = 1; //2=> Inactive/1=>Active. 
	        	$input['manage_by'] = Auth::user()->id;
	            $updateuser = Category::where('id',$category->id)->update($input);
	     
	            return response()->json(['status'=>1,'message' =>'Category status active successfully.']); 
	        }
	        else
	        {
	            return response()->json(['status'=>0,'message'=>'No data found'],200);
	        }
	        
	    }

	    

	}
