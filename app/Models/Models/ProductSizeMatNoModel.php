<?php

namespace App\Models\Models;

// use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductSizeMatNoModel extends Model
{
    // use HasFactory;

    protected $table = 'product_size_mat_no';
    protected $guarded = [];

    public function subCategory()
    {
        return $this->hasOne('App\Models\Models\ProductSubCategory','id','sub_cat_id');
    }
}
