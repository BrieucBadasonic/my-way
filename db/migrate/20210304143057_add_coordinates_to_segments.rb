class AddCoordinatesToSegments < ActiveRecord::Migration[6.0]
  def change
    add_column :segments, :destination_latitude, :float
    add_column :segments, :destination_longitude, :float
    add_column :segments, :start, :string
    add_column :segments, :start_latitude, :float
    add_column :segments, :start_longitude, :float
  end
end
