$(document).ready(function() {
  // var live = true;
  // function updateISSView() {
  //   $.get('http://api.open-notify.org/iss-now.json').done(function(data) {
  //     var $image = $('#iss-view');
  //     var latitude = data["iss_position"]['latitude'];
  //     var longitude = data["iss_position"]['longitude'];
  //     var url = "https://maps.googleapis.com/maps/api/staticmap?maptype=satellite&center=" + latitude + ',' + longitude + "&zoom=8&size=640x400&key=" + "<%= ENV['GOOGLE_MAPS_API_KEY'] %>";
  //     $image.attr('src', url);
  //   })
  //   if(live){
  //      setTimeout(updateISSView, 5000);
  //   }
  // }

  // updateISSView();

});
