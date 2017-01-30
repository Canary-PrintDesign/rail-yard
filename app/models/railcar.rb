class Railcar < ApplicationRecord
  has_many :car_move_log_entries
  has_many :car_temp_log_entries
  scope :in_yard, -> { where(in_yard: true) }

  def position
    car_move_log_entries.last.position
  end

  def arrived_at(before=DateTime.current)
    car_move_log_entries.arriving.before(before).last.created_at
  end
end
