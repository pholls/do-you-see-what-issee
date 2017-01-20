class Photo < ActiveRecord::Base
  belongs_to :location

  def self.get(position)
    latitude = position.latitude
    longitude = position.longitude
    url = "https://maps.googleapis.com/maps/api/staticmap?maptype=satellite&center=#{latitude},#{longitude}&zoom=8&size=640x400&key="
    url << ENV["GOOGLE_MAPS_API_KEY"]
    Photo.create!(url: url)
  end
end
