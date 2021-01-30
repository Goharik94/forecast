google.maps.event.addDomListener(window, 'load', function () {

    var options = {
        types: ['(cities)']
    };

    var town_name    = document.getElementById('txtPlaces');
    var autocomplete = new google.maps.places.Autocomplete(town_name, options);

    autocomplete.addListener('place_changed', function() {
        var place = autocomplete.getPlace();        
        var data  = {
            _token    : $('input[name=_token]').val(),
            city_name : place['vicinity']
        }

        $.ajax({
            type     : "post",
            url      : $('#host').val()+'/checkWeather',
            data     : data,
            dataType : 'json',   
            success  : function(r){

                var temp=parseInt(r.main.temp)
                var wind=parseInt(r.wind.speed)

                if (!($('#main_container').empty())) {
                    $('#main_container').empty()
                    $('#main_container').append(
                        `<div class="col-md-6">
                        <div class="col-md-12">
                        <h1 class="city_name">${r.name} ${r.sys.country}</h1>
                        <h3 class="city_date">${r.dt}</h3>
                        <h4 class="city_cloud">${r.weather[0].main}</h4>
                        </div>
                        <div class="content_section">
                        <div class="col-md-6 wed_img"></div>
                        <div class="col-md-6">
                        <h1 class="wed_celsius">${temp} C</h1>
                        <h3 class="wed_wind">Wind: ${wind}  km/h</h3>
                        </div>
                        </div>
                        </div>`,
                    )
                }
                else{
                    $('#main_container').append(
                        `<div class="col-md-6">
                        <div class="col-md-12">
                        <h1 class="city_name">${r.name} ${r.sys.country}</h1>
                        <h3 class="city_date">${r.dt}</h3>
                        <h4 class="city_cloud">${r.weather[0].main}</h4>
                        </div>
                        <div class="content_section">
                        <div class="col-md-6 wed_img"></div>
                        <div class="col-md-6">
                        <h1 class="wed_celsius">${temp} C</h1>
                        <h3 class="wed_wind">Wind: ${wind}  km/h</h3>
                        </div>
                        </div>
                        </div>`,
                    )
                }                 
                if (temp>0) {
                    $('.wed_img').append("<img src='uploads/sunny.png' class='col-md-6'>")
                }else{
                    $('.wed_img').append("<img src='uploads/cloudy.png' class='col-md-6'>")
                }
            }
        })
    })  
})
