class Stop < ActiveRecord::Base
  belongs_to :line
  belongs_to :station

  def find_station
    Station.find(self.station_id)
  end
end
