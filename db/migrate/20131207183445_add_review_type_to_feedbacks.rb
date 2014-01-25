class AddReviewTypeToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :emo_type, :string
  end
end
