
@extends('new_layout')

@section('content')
<style>
  .uper {
    margin-top: 40px;
  }
</style>


<div class="container-fluid">
  @if(session()->get('success'))
  <div class="alert alert-success">
    {{ session()->get('success') }}
  </div><br />
  @endif
  <div class="row">
    <!-- column -->
    <div class="col-sm-3"></div>
    <div class="col-sm-6" style="background-color: white;font-size:14px">
      <p style="font-size: 16px; font-weight:400">Implementing Offices<span style="float: right;margin-top:5px"><a class="btn btn-success" href="{{ url('offices/create')}}">Add New Office</a></span></p>
      <table id="example" class="table table-striped table-bordered nowrap" style="width:100%">
        <thead>
          <tr>
            <td>ID</td>
            <td>Implementing Office Name</td>
            <td>Edit</td>
            <td>Delete</td>
          </tr>
        </thead>
        <tbody>
        @foreach($offices as $office)
        <tr>
            <td>{{$office->id}}</td>
            <td>{{$office->name}}</td>
            <td><a href="{{ route('offices.edit', $office->id)}}" class="btn btn-primary">Edit</a></td>
            <td>
                <form action="{{ route('offices.destroy', $office->id)}}" method="post">
                  @csrf
                  @method('DELETE')
                  <button class="btn btn-danger" type="submit">Delete</button>
                </form>
            </td>
        </tr>
        @endforeach
        </tbody>
      </table>
    </div>
    <!-- column -->
  </div>
</div>
@endsection
