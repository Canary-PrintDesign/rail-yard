class CreateCarMoveLogEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :car_move_log_entries do |t|
      t.boolean :arriving
      t.integer :position

      t.timestamps
    end
  end
end
