class AddRatingToPolitics < ActiveRecord::Migration
  def change
    add_column :politics, :rating, :decimal
  end
end
