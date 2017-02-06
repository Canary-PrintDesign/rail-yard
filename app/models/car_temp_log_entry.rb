class CarTempLogEntry < ApplicationRecord
  belongs_to :railcar

  def chart_point
    [created_at, degrees]
  end
end
