class ChangeRatingInFeedbacks < ActiveRecord::Migration
  def change
  	change_column :feedbacks, :rating, :decimal, default: 0.0 
  end
end
