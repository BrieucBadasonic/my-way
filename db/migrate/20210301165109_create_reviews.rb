class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :description
      t.float :rating
      t.references :garden, null: false, foreign_key: true
      t.references :segment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
