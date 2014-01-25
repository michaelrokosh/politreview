class RemoveReviewTypeFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :emo_type, :string
  end
end
