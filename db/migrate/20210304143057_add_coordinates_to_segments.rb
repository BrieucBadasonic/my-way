class AddCoordinatesToSegments < ActiveRecord::Migration[6.0]
  def change
    add_column :segments, :latitude, :float
    add_column :segments, :longitude, :float
  end
end
