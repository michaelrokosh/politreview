class AddFfffedbackTypeToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :emo_type, :string, default: 'neutral'
  end
end
