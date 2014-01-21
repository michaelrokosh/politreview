class AddCommentableToComments < ActiveRecord::Migration
  def change
    add_column :comments, :commentable_id, :integer
    add_column :comments, :commenter_id, :integer
    add_column :comments, :commentable_type, :string
  end
end