class AddDefaultValueToUsersRateAndFeedbacksRate < ActiveRecord::Migration
  def change
  	change_column :feedbacks, :feedbacks_rate, :decimal, default: 0.0
  	change_column :feedbacks, :users_rate, :decimal, default: 0.0
  end
end
