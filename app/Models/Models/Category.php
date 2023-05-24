<?php

namespace App\Models\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'categorys';
    protected $guarded = [];

    public function getProductDetails(){
        return $this->belongsTo('App\Models\Models\Product','product_id','id');
    }
    public function subCategory()
    {
        return $this->hasMany('App\Models\Models\ProductSubCategory','cat_id','id');
    }
}
