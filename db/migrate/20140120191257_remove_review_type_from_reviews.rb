class RemoveReviewTypeFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :review_type, :string
  end
end
