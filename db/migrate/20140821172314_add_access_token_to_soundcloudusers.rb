class AddAccessTokenToSoundcloudusers < ActiveRecord::Migration
  def change
    add_column :soundcloudusers, :access_token, :string
  end
end
