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


    public function country()
    {
        return $this->belongsTo(Country::class, 'country_id', 'id');
    }

    public function status()
    {
        return $this->belongsTo(Status::class, 'status_id', 'id');
    }

    public function office()
    {
        return $this->belongsTo(Office::class, 'office_id', 'id');
    }

    public function readiness()
    {
        return $this->belongsTo(ReadinessType::class, 'readiness_type_id', 'id');
    }
}
