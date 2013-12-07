class RemoveFeedbackRateAndUsersRateFromFeedbacks < ActiveRecord::Migration
  def change
    remove_column :feedbacks, :feedbacks_rate, :decimal
    remove_column :feedbacks, :users_rate, :decimal
  end
end
