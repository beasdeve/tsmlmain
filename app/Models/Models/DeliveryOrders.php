<?php

namespace App\Models\Models;

use Illuminate\Database\Eloquent\Model;

class DeliveryOrders extends Model
{
    protected $table = 'delivery_orders';
    protected $guarded = [];


    public function subCategory()
    {
        return $this->hasOne('App\Models\Models\ProductSubCategory','id','material_grade');
    }
}
