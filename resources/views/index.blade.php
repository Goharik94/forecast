@extends('layout.header')

@section('content')

<div class="col-md-12">
    <div class="home_content">
        <h1>
            Weather Forecast 
        </h1>
        <br>
        <div class="form-control">
            <input type="text" class="form-control" id="txtPlaces" placeholder="Enter a location">
        </div>
    </div>  
    <div id="main_container" class="col-md-12"></div>
</div>

@endsection

@extends('layout.footer')