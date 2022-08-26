@extends('new_layout')

@section('content')
<div class="container-fluid">
    <div class="row">
        <!-- Column -->
        <div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Total Number of Projects</h4>
                    <div class="text-end">
                        <h2 class="font-light mb-0">
                            <i class="mdi mdi-arrow-up fs-2 text-success"></i> {{ $total }}
                        </h2>
                        <span class="text-muted">All Projects</span>
                    </div>
                    <span class="text-success">{{ $completed }}</span>
                    <div class="progress">
                        <div class="progress-bar bg-success" role="progressbar" style="width: 80%; height: 6px" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Column -->
        <!-- Column -->
        <div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Total Grant Amount</h4>
                    <div class="text-end">
                        <h2 class="font-light mb-0">
                            <i class="mdi mdi-arrow-up fs-2 text-info"></i> ${{ $total_amount }}
                        </h2>
                        <span class="text-muted">Grant Amount to Date</span>
                    </div>
                    <span class="text-info">${{ $first_disbursement_amount }}</span>
                    <div class="progress">
                        <div class="progress-bar bg-info" role="progressbar" style="width: 30%; height: 6px" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Column -->
    </div>

    <div class="row">
        <!-- column -->
        <div class="col-sm-12" style="background-color: white;font-size:14px">
            <p style="font-size: 16px; font-weight:400">Projects</p>
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

                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <!-- column -->
    </div>
</div>
@endsection