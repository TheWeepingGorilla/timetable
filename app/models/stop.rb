class Stop < ActiveRecord::Base
  belongs_to :line
  belongs_to :station
  before_validation :time_form
  validates :time, presence: true

  def find_station
    Station.find(self.station_id)
  end

private
  def time_form
    m = /(\d{1,2}:\d{1,2})/.match(self.time)
    if m == nil
      self.time = nil
    else
      self.time = m[0]
    end
  end
end
