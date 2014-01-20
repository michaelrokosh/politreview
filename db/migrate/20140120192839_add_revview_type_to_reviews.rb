class AddRevviewTypeToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :review_type, :string, default: 'neutral'
  end
end
