<?php

namespace App\Http\Controllers;

use App\Models\Country;
use Illuminate\Http\Request;
use App\Models\Project;
use App\Models\Status;
use App\Models\ReadinessType;
use App\Models\Office;

class ProjectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $projects = Project::all();
    
        return view('project.index', compact('projects'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $countries = Country::all();
        $offices = Office::all();
        $readiness_types = ReadinessType::all();
        $statuses = Status::all();
        return view('project.create', compact('countries', 'offices', 'readiness_types', 'statuses'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $amount = (int)(intval($request->get("first_disbursement_amount")) );
        $country_id = (int)(intval($request->get("country_id")) );
        $status_id = (int)(intval($request->get("status_id")) );
        $office_id = (int)(intval($request->get("office_id")) );
        $readiness_type_id = (int)(intval($request->get("readiness_type_id")) );
        $request->merge([
            "first_disbursement_amount" => $amount,
            "country_id" => $country_id,
            "status_id" => $status_id,
            "office_id" => $office_id,
            "readiness_type_id" => $readiness_type_id
        ]);

        $validatedData = $request->validate([
            'project_ref' => 'required|max:255',
            'title' => 'required|max:255',
            'grant_amount' => 'required',
            'date_from_gcf' => 'required',
            'start_date' => 'required',
            'duration' => 'required|max:2',
            'end_date' => 'required|',
            'readiness_or_nap' => 'required',
            'first_disbursement_amount' => 'required',
            'country_id' => 'required',
            'status_id' => 'required',
            'office_id' => 'required',
            'readiness_type_id' => 'required',
        ]);

       // dd($validatedData);
        $show = Project::create($validatedData);

        return redirect('/projects')->with('success', 'Project is successfully saved');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $project = Project::findOrFail($id);
        $countries = Country::all();
        $offices = Office::all();
        $readiness_types = ReadinessType::all();
        $statuses = Status::all();
        return view('project.edit', compact('project','countries', 'offices', 'readiness_types', 'statuses'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'project_ref' => 'required|max:255',
            'title' => 'required|max:255',
            'grant_amount' => 'required',
            'date_from_gcf' => 'required',
            'start_date' => 'required',
            'duration' => 'required|max:2',
            'end_date' => 'required|',
            'readiness_or_nap' => 'required',
            'first_disbursement_amount' => 'required',
            'country_id' => 'required',
            'status_id' => 'required',
            'office_id' => 'required',
            'readiness_type_id' => 'required',
        ]);
        Project::whereId($id)->update($validatedData);

        return redirect('/projects')->with('success', 'Project Data is successfully updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $project = Project::findOrFail($id);
        $project->delete();

        return redirect('/project')->with('success', 'Project Data is successfully deleted');
    }


    public function all()
    {
        $projects = Project::all();
        return  response()->json(compact('projects'), 200);
    }


    public function givenCountry()
    {
        $searchTerm = "Kenya";
        $country = Country::query()
        ->where('name', 'LIKE', "%{$searchTerm}%") 
        ->first();
        $projects = Project::where('country_id', $country->id)->get();
        return  response()->json(compact('projects'), 200);
    }

    public function givenStatus()
    {
        $searchTerm = "Completed";
        $status = Status::query()
        ->where('status', 'LIKE', "%{$searchTerm}%") 
        ->first();
        $projects = Project::where('status_id', $status->id)->get();
        return  response()->json(compact('projects'), 200);
    }
}
