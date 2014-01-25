class ChangeFeedbackTypeToEmoType < ActiveRecord::Migration
  def change
  	rename_column :feedbacks, :feedback_type, :emo_type
  	rename_column :reviews, :review_type, :emo_type
  end
end
