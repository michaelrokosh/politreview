class AddReviewTypeToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :emo_type, :string
  end
end
