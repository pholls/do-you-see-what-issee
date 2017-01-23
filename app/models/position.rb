class Position < ActiveRecord::Base
  has_one :photo

  validates :latitude, presence: true
  validates :longitude, presence: true

  def self.get
    response = RestClient.get('https://api.open-notify.org/iss-now.json')
    result = JSON.parse(response.body)
    Position.create!(latitude: result["iss_position"]['latitude'],
                     longitude: result["iss_position"]['longitude'])
  end
end
