# Do You See What ISSee?

This page updates every ten seconds with a high-resolution satellite image of the area currently beneath the International Space Station, to simulate viewing the Earth from the ISS. When possible, it also retrieves the general address (town, state/province, and country) beneath the ISS.

Check out the deployed app on [Heroku](http://doyouseewhatissee.herokuapp.com/).

## Team

This project was created by [Pat Holland](https://github.com/pholls/) as a solo project while a student at Dev Bootcamp Seattle. It was created in two days.

## Technologies

This is a Sinatra app that uses two APIs to determine the coordinates of the current position of the International Space Station and display a satellite image and general address of that location.

* JavaScript
* [Open Notify API](https://open-notify.org/)
    * ISS coordinates
* [Google Maps API](https://developers.google.com/maps/)
    * Satellite image and rough location description
