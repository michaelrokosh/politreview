class AddTypeStringToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :type, :string, default: 'neutral'
  end
end
