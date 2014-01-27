class RemovePhotoUrlFromPolitics < ActiveRecord::Migration
  def change
    remove_column :politics, :photo_url, :string
  end
end
