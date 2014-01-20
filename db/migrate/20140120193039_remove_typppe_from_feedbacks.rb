class RemoveTypppeFromFeedbacks < ActiveRecord::Migration
  def change
    remove_column :feedbacks, :type, :string
  end
end
