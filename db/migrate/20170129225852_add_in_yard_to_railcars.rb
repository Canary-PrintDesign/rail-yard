class AddInYardToRailcars < ActiveRecord::Migration[5.0]
  def change
    add_column :railcars, :in_yard, :boolean
  end
end
