class RenameCommenterIdToUserId < ActiveRecord::Migration
  def change
  	rename_column :comments, :commenter_id, :user_id
  	remove_column :comments, :commenter_type
  end
end
