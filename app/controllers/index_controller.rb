get '/' do
  erb :index, locals: {:url => Photo.last.url, position: Position.last}
end

# PSEUDOCODE

# Display the satellite image that corresponds to the current position
# of the International Space Station.
# Query the http://open-notify.org/Open-Notify-API/ once per minute for the ISS's
# current position.
# Store the result in the DB.(?)
# IF the most recent query is less than a minute old
#   Do not query the API
#   Pull Location.last instead
# ELSE
#   Query Open-Notify-API
#   Save the new result to the db(?)
# END IF
# THEN Query Google Maps API for Satellite image that corresponds to the latitude
# and longitude of the ISS.
# https://developers.google.com/maps/documentation/static-maps/
# Save to the DB.(?)
