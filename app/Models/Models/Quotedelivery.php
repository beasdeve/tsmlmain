<?php

namespace App\Models\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Quotedelivery extends Model
{
	use SoftDeletes;
	
    protected $table = 'quote_deliveries';
    protected $fillable  = ['quote_sche_no','qty','to_date','from_date'];

     protected $dates = ['deleted_at'];
}
