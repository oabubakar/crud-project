@extends('new_layout')

@section('content')
<style>
  .uper {
    margin-top: 40px;
  }
</style>


<div class="container-fluid">
  <div class="row">
    <!-- column -->
    <div class="col-sm-3"></div>
    <div class="col-sm-6" style="background-color: white;font-size:14px;padding:10px">
      <p style="font-size: 16px; font-weight:400">Create New Project</p>
      @if ($errors->any())
      <div class="alert alert-danger">
        <ul>
          @foreach ($errors->all() as $error)
          <li>{{ $error }}</li>
          @endforeach
        </ul>
      </div><br />
      @endif
      <form method="post" action="{{ route('projects.store') }}">
        <div class="form-group">
          @csrf
          <label for="project_ref">Project Ref:</label>
          <input type="text" class="form-control" name="project_ref" />
          <label for="title">Title:</label>
          <input type="text" class="form-control" name="title" />
          <label for="grant_amount">Grant Amount (USD):</label>
          <input type="text" class="form-control" name="grant_amount" />
          <label for="date_from_gcf">Date from GCF:</label>
          <input type="text" class="form-control" name="date_from_gcf" />
          <label for="start_date">Start Date:</label>
          <input type="text" class="form-control" name="start_date" />
          <label for="duration">Duration:</label>
          <input type="text" class="form-control" name="duration" />
          <label for="end_date">End Date:</label>
          <input type="text" class="form-control" name="end_date" />
          <label for="readiness_or_nap">Readiness or NAP:</label>
          <input type="text" class="form-control" name="readiness_or_nap" />
          <label for="first_disbursement_amount">First Disbursement Amount:</label>
          <input type="number" class="form-control" name="first_disbursement_amount" />
          <div class="form-group">
            <label for="demo_overview">Countries</label>
            <select class="browser-default custom-select" name="country_id" >
                  <option selected="">Select</option>
                  @foreach($countries as $country)
                  <option value="{{$country->id}}">{{$country->name}}</option>
                  @endforeach
                </select>
          </div>
          <div class="form-group">
            <label for="demo_overview">Implementing Office:</label>
            <select class="browser-default custom-select" name="office_id" >
                  <option selected="">Select</option>
                  @foreach($offices as $office)
                  <option value="{{$office->id}}">{{$office->name}}</option>
                  @endforeach
                </select>
          </div>
          <div class="form-group">
            <label for="demo_overview">Readiness Type:</label>
            <select class="browser-default custom-select" name="readiness_type_id" >
                  <option selected="">Select</option>
                  @foreach($readiness_types as $readiness_type)
                  <option value="{{$readiness_type->id}}">{{$readiness_type->readiness_type}}</option>
                  @endforeach
                </select>
          </div>
          <div class="form-group">
            <label for="demo_overview">Status:</label>
            <select class="browser-default custom-select" name="status_id" >
                  <option selected="">Select</option>
                  @foreach($statuses as $status)
                  <option value="{{$status->id}}">{{$status->status}}</option>
                  @endforeach
                </select>
          </div>
        </div>
        <button type="submit" class="btn btn-primary">Add Project</button>
      </form>
      </tbody>
      </table>
    </div>
    <!-- column -->
  </div>
</div>
@endsection