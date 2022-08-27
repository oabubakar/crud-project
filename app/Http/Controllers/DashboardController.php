<?php

namespace App\Http\Controllers;

use App\Models\Project;
use App\Models\Status;
class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $projects = Project::with('country', 'status', 'office', 'readiness')->get();
        $total = count($projects);
        $total_amount = $projects->sum('grant_amount');
        $first_disbursement_amount = $projects->sum('first_disbursement_amount');

        $searchTerm = "Completed";
        $status = Status::query()
        ->where('status', 'LIKE', "%{$searchTerm}%") 
        ->first();
        $completed = count(Project::where('status_id', $status->id)->get());
        return view('dashboard', compact('projects', 'total', 'completed', 'total_amount', 'first_disbursement_amount'));
    }
}
