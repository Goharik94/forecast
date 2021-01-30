<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href=" {{ asset('css/weather.css') }} ">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-expand-md navbar-dark bg-dark">
		<a class="navbar-brand" href="{{ url('') }}">
			<img src='{{url("uploads/wed.png")}}' alt="logo" id="logo">
		</a>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<div class="navbar-nav">
				<a href="{{ url('') }}" class="nav-item nav-link active">Home</a>
				<a href="{{ url('checkList') }}" class="nav-item nav-link">List</a>
			</div>
		</div>
	</nav>

	<input type="hidden" value="{{url('')}}" id="host"> 
	{{csrf_field()}}	
	@yield('content')

