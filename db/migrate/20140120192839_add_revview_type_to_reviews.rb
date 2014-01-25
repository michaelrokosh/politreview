class AddRevviewTypeToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :emo_type, :string, default: 'neutral'
  end
end
