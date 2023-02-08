class AddColumnsToPlace < ActiveRecord::Migration[7.0]
  def change
    add_column :places, :lat, :decimal, precision: 10, scale: 6
    add_column :places, :lng, :decimal, precision: 10, scale: 6
  end
end
