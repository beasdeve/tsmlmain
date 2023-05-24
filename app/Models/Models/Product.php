<?php

namespace App\Models\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';
    protected $guarded = [];

    
    // public function getSubCateDetails(){
    //     return $this->belongsTo('App\Models\ProductSubCategory','sub_cat_id','id');
    // }

    public function subcategroryDetails()
    {
    	return $this->hasMany('App\Models\Models\ProductSubCategory','pro_id','id');
    }
}
