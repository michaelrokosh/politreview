class RemoveFeedbackTypeFromFeedbacks < ActiveRecord::Migration
  def change
    remove_column :feedbacks, :emo_type, :string
  end
end
