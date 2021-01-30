<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use RakibDevs\Weather\Weather;
use App\Models\WeatherCheck;

class WeatherCheckController extends Controller
{

	public function checkWeather(Request $r)
	{
		$cityName  = $r->input('city_name');
		$wt        = new Weather();
		$info      = $wt->getCurrentByCity($cityName);
		$newQuery  = array(
			'city_name' => $info->name,
			'celsius'   => $info->main->temp, 
		);

		WeatherCheck::insert($newQuery);
		echo json_encode($info);
	}

	public function checkList()
	{
		$list = WeatherCheck::orderBy('id', 'desc')->paginate(8);
		return  view('show_weather',['weather' => $list]); 
	}
}
