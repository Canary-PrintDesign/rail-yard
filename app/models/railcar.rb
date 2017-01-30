class Railcar < ApplicationRecord
  has_many :car_move_log_entries
  has_many :car_temp_log_entries
end
