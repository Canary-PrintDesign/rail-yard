class AddRailcarToCarTempLogEntry < ActiveRecord::Migration[5.0]
  def change
    add_reference :car_temp_log_entries, :railcar, foreign_key: true
  end
end
