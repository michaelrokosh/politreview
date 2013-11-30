class AddNewsIdToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :news_id, :integer
  end
end
