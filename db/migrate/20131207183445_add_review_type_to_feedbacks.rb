class AddReviewTypeToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :review_type, :string
  end
end
