require 'tempfile'

get '/' do
  erb :index
end

# def iss_view_url(latitude, longitude)
#   'https://maps.googleapis.com/maps/api/staticmap?maptype=satellite&center=42.000,42.000&zoom=8&size=640x400&key=' + ENV['GOOGLE_MAPS_API_KEY']
# end

# iss_view_file = Tempfile.new('iss-view')

# def refresh_img(iss_view_file)
#   open(iss_view_file.path, "wb") do |file|
#     open(iss_view_url(42.000,42.000)) do |content|
#       file.write(content)
#     end
#   end
# end


# get '/tempfile' do
#   p iss_view_file
#   p iss_view_file.path

#   send_file iss_view_file.path, type: 'image/jpeg', disposition: 'inline'
# end
