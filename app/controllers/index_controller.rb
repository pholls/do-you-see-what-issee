require 'tempfile'

def iss_view_url(latitude, longitude)
  'https://maps.googleapis.com/maps/api/staticmap?maptype=satellite&center=42.000,42.000&zoom=8&size=640x400&key=' + ENV['GOOGLE_MAPS_API_KEY']
end

get '/' do
  erb :index, locals: {:url => Photo.last.url, position: Position.last}
end


iss_view_file = Tempfile.new('iss-view')

def refresh_img(iss_view_file)
  open(iss_view_file.path, "wb") do |file|
    open(iss_view_url(42.000,42.000)) do |content|
      file.write(content)
    end
  end
end


get '/lake' do
  p iss_view_file
  p iss_view_file.path

  send_file iss_view_file.path, type: 'image/jpeg', disposition: 'inline'
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
