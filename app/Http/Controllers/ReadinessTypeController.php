<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ReadinessType;

class ReadinessTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $readiness_types = ReadinessType::all();
        
        return view('readiness_type.index',compact('readiness_types'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('readiness_type.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'readiness_type' => 'required|max:255',
        ]);
        $show = ReadinessType::create($validatedData);
   
        return redirect('/readiness_types')->with('success', 'Project readiness type is successfully saved');
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
        $readiness_type = ReadinessType::findOrFail($id);

        return view('readiness_type.edit', compact('readiness_type'));
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
            'readiness_type' => 'required|max:255'
        ]);
        ReadinessType::whereId($id)->update($validatedData);

        return redirect('/readiness_types')->with('success', 'Project readiness type is successfully updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $readiness_type = ReadinessType::findOrFail($id);
        $readiness_type->delete();

        return redirect('/readiness_types')->with('success', 'Project readiness type data is successfully deleted');
    }
}
