class RemoveTypeFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :type, :string
  end
end
