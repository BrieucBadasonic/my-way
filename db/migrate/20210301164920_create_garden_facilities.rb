class CreateGardenFacilities < ActiveRecord::Migration[6.0]
  def change
    create_table :garden_facilities do |t|
      t.references :garden, null: false, foreign_key: true
      t.references :facility, null: false, foreign_key: true

      t.timestamps
    end
  end
end
