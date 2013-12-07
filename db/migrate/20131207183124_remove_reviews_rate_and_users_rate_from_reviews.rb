class RemoveReviewsRateAndUsersRateFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :reviews_rate, :decimal
    remove_column :reviews, :users_rate, :decimal
  end
end
