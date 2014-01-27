class RemoveImageUrlFromNews < ActiveRecord::Migration
  def change
    remove_column :news, :image_url, :string
    add_column :politics, :photo_url, :string
  end
end
