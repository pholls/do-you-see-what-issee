$(document).ready(function() {
  var live = true;
  var interval = 10000;
  
  function updateISSView() {
    $.get('https://api.open-notify.org/iss-now.json').done(function(data) {
      var $image = $('#iss-view');
      var latitude = data["iss_position"]['latitude'];
      var longitude = data["iss_position"]['longitude'];
      var url = "https://maps.googleapis.com/maps/api/staticmap?maptype=satellite&center=" + latitude + ',' + longitude + "&zoom=6&size=640x400&key=";
      $image.attr('src', url);
      updateCoordinates(latitude, longitude);
      getAddress(latitude, longitude);
    })

  function updateCoordinates(latitude, longitude) {
    $('#coordinates').text(latitude + ', ' + longitude);
  }

  function getAddress(latitude, longitude) {
    var url = 'https://maps.googleapis.com/maps/api/geocode/json?latlng=' + latitude + ',' + longitude + '&key=';
    $.get(url).done(function(data) {
      if(data['status'] === 'ZERO_RESULTS'){
        $('.location-p-tag').remove();
      } else {
        $('#location').text(data['results'][1]['formatted_address']);
      }
    })
  }

  if(live){
      setTimeout(updateISSView, interval);
    }
  }

  updateISSView();

});
