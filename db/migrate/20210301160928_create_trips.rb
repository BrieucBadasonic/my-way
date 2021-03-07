class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :start_location
      t.float :start_location_latitude
      t.float :start_location_longitude
      t.string :final_destination
      t.float :final_destination_latitude
      t.float :final_destination_longitude
      t.float :total_distance
      t.float :total_elevation
      t.date :start_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
