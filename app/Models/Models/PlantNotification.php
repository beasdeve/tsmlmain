<?php

namespace App\Models\Models;

use Illuminate\Database\Eloquent\Model;

class PlantNotification extends Model
{
    protected $table = 'plant_notifications';
    protected $guarded = [];

    public function userName()
    {
        return $this->hasOne('App\Models\User','id','sender_id');
    }
}


