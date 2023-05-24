<?php

namespace App\Models\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SalesheadNotification extends Model
{
    use HasFactory;

    protected $table = 'saleshead_notifications';
    protected $guarded = [];
}
