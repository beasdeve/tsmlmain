<?php

namespace App\Models\Models;

use Illuminate\Database\Eloquent\Model;

class ProductSubCategory extends Model
{
    protected $table = 'sub_categorys';
    protected $guarded = [];

    public function getCategoryDetails(){
        return $this->hasOne('App\Models\Models\Category', 'id', 'cat_id');
    }
    public function getProductDetails(){
        return $this->hasOne('App\Models\Models\Product','id','pro_id');
    }

}
