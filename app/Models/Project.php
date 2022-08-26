<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;
    protected $fillable = ['project_ref',
    'title',
    'grant_amount',
    'date_from_gcf',
    'start_date',
    'duration',
    'end_date',
    'readiness_or_nap',
    'first_disbursement_amount',
    'country_id',
    'status_id',
    'office_id',
    'readiness_type_id'];
}
