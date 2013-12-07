class RemoveReviewTypeFromFeedbacks < ActiveRecord::Migration
  def change
    remove_column :feedbacks, :review_type, :string
  end
end
