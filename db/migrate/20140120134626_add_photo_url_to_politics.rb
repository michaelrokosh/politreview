class AddPhotoUrlToPolitics < ActiveRecord::Migration
  def change
    add_column :politics, :photo_url, :string
    add_column :politics, :post, :string
  end
end
