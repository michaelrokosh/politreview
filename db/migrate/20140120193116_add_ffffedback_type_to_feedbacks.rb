class AddFfffedbackTypeToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :feedback_type, :string, default: 'neutral'
  end
end
