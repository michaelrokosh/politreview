class AddReviewsRateAndUsersRateToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :reviews_rate, :decimal, default: 0.0
    add_column :reviews, :users_rate, :decimal, default: 0.0
  end
end
