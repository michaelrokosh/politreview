class RemoveFeedbackTypeFromFeedbacks < ActiveRecord::Migration
  def change
    remove_column :feedbacks, :feedback_type, :string
  end
end
