<?php

namespace App\Models\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AdminLog extends Model
{
    use HasFactory;

    protected $table = 'adminlogs';
    protected $guarded = [];



    public function admins()
    {
        return $this->belongsTo('App\Models\Admin','admin_id','id');
    }
}
