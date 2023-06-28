<?php

namespace App\Models\Models;

use Illuminate\Database\Eloquent\Model;

class OnBehalfCategory extends Model
{

    protected $table = 'onbehalf_category';
    protected $fillable = ['name','created_at','updated_at'];

}
