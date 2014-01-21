class RemoveNewsIdFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :news_id, :integer
  end
end
