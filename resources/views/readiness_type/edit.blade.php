
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
      <p style="font-size: 16px; font-weight:400">Edit Project Readiness Type Details</p>
      @if ($errors->any())
      <div class="alert alert-danger">
        <ul>
          @foreach ($errors->all() as $error)
          <li>{{ $error }}</li>
          @endforeach
        </ul>
      </div><br />
      @endif
      <form method="post" action="{{ route('readiness_types.update', $readiness_type->id ) }}">
          <div class="form-group">
              @csrf
              @method('PATCH')
              <label for="name">Project Readiness Type:</label>
              <input type="text" class="form-control" name="readiness_type" value="{{ $readiness_type->readiness_type }}"/>
          </div>
          <button type="submit" class="btn btn-primary">Update Data</button>
      </form>
      </tbody>
      </table>
    </div>
    <!-- column -->
  </div>
</div>
@endsection