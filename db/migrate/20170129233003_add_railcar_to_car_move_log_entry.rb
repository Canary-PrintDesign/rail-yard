class AddRailcarToCarMoveLogEntry < ActiveRecord::Migration[5.0]
  def change
    add_reference :car_move_log_entries, :railcar, foreign_key: true
  end
end
