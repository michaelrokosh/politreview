class ChangeRatingInReviews < ActiveRecord::Migration
  def change
  	change_column :reviews, :rating, :decimal, default: 0.0
  end
end
