class CreateTemperatureLogEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :car_temp_log_entries do |t|
      t.integer :degrees

      t.timestamps
    end
  end
end
