@extends('layout.header')

@section('content')

@if(!$weather->isEmpty())
  <table class="table table-striped">
    <thead>
      <tr>
        <th>City Name </th>
        <th>Celsius   </th>
        <th>Time      </th>
      </tr>
    </thead>
    <tbody>
    	@foreach ($weather as $list)
	      <tr>
	        <td>{{ $list->city_name  }}</td>
	        <td>{{ $list->celsius    }}</td>
	        <td>{{ $list->created_at }}</td>
	      </tr>
		@endforeach
    </tbody>
  </table>

  <div class="form-control" id="wed_pegination">
    {{ $weather->links() }}
  </div>
@else
<div class="col-md-12 searches"><h1>No searches yet</h1></div>
@endif

@endsection