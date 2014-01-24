class ChangeRatingInPolitics < ActiveRecord::Migration
  def change
  	change_column :politics, :rating, :decimal, default: 0.0
  end
end
