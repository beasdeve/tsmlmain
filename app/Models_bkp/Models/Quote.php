<?php

namespace App\Models\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Quote extends Model
{

    use SoftDeletes;
    
     protected $table = "quotes";

     protected $fillable = ['user_id','product_id','cat_id','rfq_no','quantity','quote_no','kam_status','cus_status','quote_type','reject_reason','valid_till','created_at','updated_at'];

     protected $dates = ['deleted_at'];


    public function schedules()
    {
        return $this->hasMany('App\Models\QuoteSchedule','quote_id','id')->where('quote_status','!=', 2)->where('quote_status','!=', 4);
    }

    public function product()
    {
        return $this->belongsTo('App\Models\Product','product_id','id');
    }

    public function subCategory()
    {
        return $this->hasOne('App\Models\ProductSubCategory','pro_id','product_id');
    }

    public function category()
    {
        return $this->belongsTo('App\Models\Category','cat_id','id');
    }


    public function user()
    {
        return $this->hasOne('App\User','id','user_id');
    }
}
