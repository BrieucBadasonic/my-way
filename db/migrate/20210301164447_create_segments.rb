class CreateSegments < ActiveRecord::Migration[6.0]
  def change
    create_table :segments do |t|
      t.string :destination
      t.float :distance
      t.float :elevation
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :current, default: true
      t.boolean :completed, default: false
      t.references :trip, null: false, foreign_key: true
      t.references :garden, null: false, foreign_key: true

      t.timestamps
    end
  end
end
