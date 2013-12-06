class RemoveReviewableIdReviewableTypeFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :reviewable_id, :integer
    remove_column :reviews, :reviewable_type, :string
  end
end
