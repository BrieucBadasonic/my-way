class ChangeTypeOfDescriptionInReviews < ActiveRecord::Migration[6.0]
  def change
    change_column :reviews, :description, :text
  end
end
