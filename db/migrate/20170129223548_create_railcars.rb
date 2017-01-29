class CreateRailcars < ActiveRecord::Migration[5.0]
  def change
    create_table :railcars do |t|
      t.string :number

      t.timestamps
    end
  end
end
