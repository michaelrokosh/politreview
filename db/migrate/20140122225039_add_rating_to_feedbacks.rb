class AddRatingToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :rating, :decimal
  end
end
