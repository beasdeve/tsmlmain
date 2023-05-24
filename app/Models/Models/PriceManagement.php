<?php

namespace App\Models\Models;

use Illuminate\Database\Eloquent\Model;

class PriceManagement extends Model
{
    protected $table = 'price_management';
    protected $guarded = [];

    public function getCategoryDetails(){
        return $this->hasOne('App\Models\Models\Category', 'id', 'cat_id');
    }
    public function getSubCategoryDetails(){
        return $this->hasOne('App\Models\Models\ProductSubCategory','id','sub_cat_id');
    }
}
