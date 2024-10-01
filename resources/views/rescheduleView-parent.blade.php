@extends('layouts.simple.master-parent')
@section('title', 'Reschedule')
@section('css')
@endsection

@section('style')
<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/vendors/calendar.css') }}">
@endsection

@section('breadcrumb-title')
    <h3>Reschedule</h3>
@endsection

@section('breadcrumb-items')
<li class="breadcrumb-item">Schedule</li>
<li class="breadcrumb-item active">Reschedule</li>
@endsection

@section('content')
<div class="container-fluid calendar-basic">
    <div class="card">
        <div class="card-body">
            <div class="row" id="wrap">
                <div class="col-xxl-3 box-col-12">
                    <div class="md-sidebar mb-3"><a class="btn btn-primary md-sidebar-toggle"
                            href="javascript:void(0)">calendar filter</a>
                        <div class="md-sidebar-aside job-left-aside custom-scrollbar">
                            <div id="external-events">
                                <h4>Reschedule Session</h4>
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Date</th>
                                                <th>Day</th>
                                                <th>Time</th>
                                            </tr> 
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>{{ $schedule->date }} </td>
                                                <td>{{ $schedule->day }} </td>
                                                <td>{{ $schedule->time }} </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                 </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-9 box-col-12" style="overflow-y:none">
                    <div class="calendar-default" id="calendar-container">
                        <div id="calendar"></div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>

    <!-- Modal for displaying selected event details -->
    <div class="modal fade" id="eventDetailsModal" tabindex="-1" role="dialog" aria-labelledby="eventDetailsLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="eventDetailsLabel">Reschedule slot confirmation </h5>
                    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="{{route('reschedule-parent', $schedule->id)}}" method="POST" onsubmit="return confirmSubmit()">
                <div class="modal-body">
                    <div class="table-responsive">
                        
                            @csrf
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Date</th>
                                        <th>Day</th>
                                        <th>Start Time</th>
                                        <th>End Time</th>
                                    </tr> 
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><input class="form-control" type="date" name="date" id="slotDate" readonly></td>
                                        <td><input class="form-control" type="text" name="day" id="slotDay" readonly></td>
                                        <td><input class="form-control" type="te" name="start_time" id="slotStartTime" readonly></td>
                                        <td><input class="form-control" type="te" name="end_time" id="slotEndTime" readonly></td>
                                    </tr>
                                </tbody>
                            </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Confirm</button>
                </div>
            </form>
            </div>
        </div>
    </div>
</div>
@endsection

@section('script')
<script>
    var calendarSlots = @json($slots);

    function confirmSubmit() {
        var isConfirmed = confirm('Your are allowed to reqeust reschedule 2 times only. Are you sure you want to request reschedule to a new slot?');

        if (isConfirmed) {
            // Additional alert after the user confirms
            alert('The request has been submitted. The new session date and time will be displayed in your schedule once the request is approved');
            return true; // Allow the form to be submitted
        }

        // If the user clicks "Cancel", prevent form submission
        return false;

    }
</script>
<script src="{{ asset('assets/js/calendar/fullcalendar.min.js') }}"></script>
<script src="{{ asset('assets/js/calendar/reschedule-parent.js') }}"></script>
@endsection