@extends('layouts.app')

@section('content')
    <h3 class="page-title">@lang('quickadmin.qa_dashboard')</h3>

    <!-- //!   {!! Form::open(['method' => 'GET', 'id' => 'date-select', 'route' => 'admin.dashboard.show' ]) !!} -->
    <!-- 'route' => ['admin.dashboard.show']]) -->

    <form method="GET" action="{{ action('HomeController@show') }}" >

    <div class="panel panel-default">
        <div class="panel-heading">
            Show bookings for the selected date
        </div>

        <div class="panel-body">
            <div class="row">
                <div class="col-xs-12 form-group">
                    {!! Form::label('time_from', trans('quickadmin.bookings.fields.time-from').'*', ['class' => 'control-label']) !!}
                    {!! Form::text('time_from', old('time_from'), ['class' => 'form-control datetimepicker', 'placeholder' => '', 'required' => '']) !!}
                    <p class="help-block"></p>
                    @if($errors->has('time_from'))
                        <p class="help-block">
                            {{ $errors->first('time_from') }}
                        </p>
                    @endif
                </div>
            </div>

            <!-- //! -->
            <input type="submit" class="btn btn-danger" value="Select" />

            <div class="row" style="margin-top:20px;">
                <div class="col-xs-3 form-group">
                    <table style="border-collapse:collapse;">
                        <tr>
                            <td style="padding:0 10px; color:red"> <h3 style="margin-top:10px">1</h3> </td>
                            <td  style="padding:10px; border-left:black solid 1px;"> <h4>Amministrazione - A</h4> </td>
                        </tr>
                        <tr>
                            <td style="padding:0 10px; color:red"> <h3 style="margin-top:10px">2</h3> </td>
                            <td  style="padding:10px; border-left:black solid 1px;"> <h4>Amministrazione - B</h4> </td>
                        </tr>
                        <tr>
                            <td style="padding:0 10px; color:red"> <h3 style="margin-top:10px">3</h3> </td>
                            <td  style="padding:10px; border-left:black solid 1px;"> <h4>Amministrazione - C</h4> </td>
                        </tr>
                        <tr>
                            <td style="padding:0 10px; color:red"> <h3 style="margin-top:10px">4</h3> </td>
                            <td  style="padding:10px; border-left:black solid 1px;"> <h4>Amministrazione - Sala Stampante</h4> </td>
                        </tr>
                        <tr>
                            <td style="padding:0 10px; color:red"> <h3 style="margin-top:10px">5</h3> </td>
                            <td  style="padding:10px; border-left:black solid 1px;"> <h4>Stanza Valentina La Paglia</h4> </td>
                        </tr>
                        <tr>
                            <td style="padding:0 10px; color:red"> <h3 style="margin-top:10px">6</h3> </td>
                            <td  style="padding:10px; border-left:black solid 1px;"> <h4>Sala Briefing</h4> </td>
                        </tr>
                    </table>
                </div>
                <div class="col-xs-6 form-group" style="position:relative; padding:0;">
                    <img src="{{ asset('img/map.png') }}">

                    <!-- //! -->
                    <h3 style="display:inline-block; color:red; position:absolute; left:{{ $positions[0][0] }}px; top:{{ $positions[0][1] }}px;"> 1 </h3>
                    <h3 style="display:inline-block; color:red; position:absolute; left:{{ $positions[1][0] }}px; top:{{ $positions[1][1] }}px;"> 2 </h3>
                    <h3 style="display:inline-block; color:red; position:absolute; left:{{ $positions[2][0] }}px; top:{{ $positions[2][1] }}px;"> 3 </h3>
                    <h3 style="display:inline-block; color:red; position:absolute; left:{{ $positions[3][0] }}px; top:{{ $positions[3][1] }}px;"> 4 </h3>
                    <h3 style="display:inline-block; color:red; position:absolute; left:{{ $positions[4][0] }}px; top:{{ $positions[4][1] }}px;"> 5 </h3>
                    <h3 style="display:inline-block; color:red; position:absolute; left:{{ $positions[5][0] }}px; top:{{ $positions[5][1] }}px;"> 6 </h3>

                    @if (isset($_GET['time_from']))
                        @foreach ($checks as $chk)
                            @if ($chk[2] == true)
                                <img src="{{ asset('img/cross.png') }}" style="position:absolute; left:{{ $chk[0] }}px; top:{{ $chk[1] }}px;" />
                            @else
                                <img src="{{ asset('img/check.png') }}" style="position:absolute; left:{{ $chk[0] }}px; top:{{ $chk[1] }}px;" />
                            @endif
                        @endforeach
                    @endif
                </div>
                <div class="col-xs-3 form-group">
                    <table style="border-collapse:collapse; float:right">
                        <tr>
                            <td style="padding:3px">
                                <img src="{{ asset('img/check.png') }}">
                            </td>
                            <td  style="padding:3px"> <h4>Available</h4> </td>
                        </tr>
                        <tr>
                            <td style="padding:3px">
                                <img src="{{ asset('img/cross.png') }}">
                            </td>
                            <td style="padding: 3px;"> <h4>Not available</h4> </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>

    {!! Form::close() !!}
@stop

@section('javascript')
    @parent
    <script src="https://cdn.datatables.net/select/1.2.0/js/dataTables.select.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.20.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
    <script>
        $('.datetimepicker').datetimepicker({
            //! format: "YYYY-MM-DD HH:mm"
            format: "YYYY-MM-DD"
        });
    </script>

    <!-- On update, submit form -->
    <script>
        $(document).ready(function() {
            $('.datetimepicker').datepicker({
                onSelect : function (dateText, inst) {
                    $('#date-select').submit(); // <-- SUBMIT
                }});
        });
    </script>
@stop

<!--
@section('content')
    <div class="row">
        <div class="col-md-10">
            <div class="panel panel-default">
                <div class="panel-heading">@lang('quickadmin.qa_dashboard')</div>

                <div class="panel-body">
                    @lang('quickadmin.qa_dashboard_text')
                </div>
            </div>
        </div>
    </div>
@endsection
-->
