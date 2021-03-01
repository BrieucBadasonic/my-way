class CreateGardens < ActiveRecord::Migration[6.0]
  def change
    create_table :gardens do |t|
      t.string :name
      t.string :description
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :tent_capacity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
