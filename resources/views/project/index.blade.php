@extends('new_layout')

@section('content')
<style>
  .uper {
    margin-top: 40px;
  }
</style>
<div class="uper">
  @if(session()->get('success'))
    <div class="alert alert-success">
      {{ session()->get('success') }}  
    </div><br />
  @endif
  <div class="row">
        <!-- column -->
        <div class="col-sm-12" style="background-color: white;font-size:14px">
            <p style="font-size: 16px; font-weight:400">Projects<span style="float: right;margin-top:5px"><a class="btn btn-success" href="{{ url('projects/create')}}">Add New Project</a></span></p>
            <table id="example" class="table table-striped table-bordered nowrap" style="width:100%">
                <thead>
                    <tr>
                        <td>ID</td>
                        <td>Project Ref</td>
                        <td>Title</td>
                        <td>Grant Amount</td>
                        <td>Date from GCF</td>
                        <td>Start Date</td>
                        <td>Duration</td>
                        <td>End Date</td>
                        <td>Readiness Or NAP</td>
                        <td>First Distbursement Amount</td>
                        <td>Country</td>
                        <td>Office</td>
                        <td>Readiness Type</td>
                        <td>Status</td>
                        <td>Edit</td>
                        <td>Delete</td>
                    </tr>
                </thead>
                <tbody>
                    @foreach($projects as $project)
                    <tr>
                        <td>{{$project->id}}</td>
                        <td>{{$project->project_ref}}</td>
                        <td>{{$project->title}}</td>
                        <td>{{$project->grant_amount}}</td>
                        <td>{{$project->date_from_gcf}}</td>
                        <td>{{$project->start_date}}</td>
                        <td>{{$project->duration}}</td>
                        <td>{{$project->end_date}}</td>
                        <td>{{$project->readiness_or_nap}}</td>
                        <td>{{$project->first_disbursement_amount}}</td>
                        <td>{{$project->country_id}}</td>
                        <td>{{$project->office_id}}</td>
                        <td>{{$project->readiness_type_id}}</td>
                        <td>{{$project->status_id}}</td>
                        <td><a href="{{ route('projects.edit', $project->id)}}" class="btn btn-primary">Edit</a></td>
                        <td><form action="{{ route('projects.destroy', $project->id)}}" method="post">
                                @csrf
                                @method('DELETE')
                                <button class="btn btn-danger" type="submit">Delete</button>
                            </form></td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <!-- column -->
    </div>
<div>
@endsection