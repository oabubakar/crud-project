<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ReadinessType extends Model
{
    use HasFactory;
    protected $fillable = ['readiness_type'];
}
