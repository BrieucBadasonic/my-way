class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :final_destination
      t.float :latitude
      t.float :longitude
      t.float :total_distance
      t.float :total_elevation
      t.date :start_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
