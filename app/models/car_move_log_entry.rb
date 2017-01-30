class CarMoveLogEntry < ApplicationRecord
  belongs_to :railcar
  scope :arriving, -> { where(arriving: true) }
  scope :before, ->(date_time) { where("created_at < ?", date_time) }
end
