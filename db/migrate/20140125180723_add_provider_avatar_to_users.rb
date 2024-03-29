class AddProviderAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :avatar_url, :string, default: '/avatar.png'
  end
end
