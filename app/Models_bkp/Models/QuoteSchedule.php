<?php

namespace App\Models\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class QuoteSchedule extends Model
{

	 use SoftDeletes;
	 
     protected $table = "quote_schedules";
     protected $fillable = ['quote_id','schedule_no','quantity','to_date','from_date','pro_size','kam_price','expected_price','plant','pickup_type','location','bill_to','ship_to','remarks','kamsRemarks','delivery','valid_till','sub_cat_id','salesRemarks','confirm_date','pay_term','credit_days','quote_status','created_at','updated_at'];

     protected $dates = ['deleted_at'];
}
