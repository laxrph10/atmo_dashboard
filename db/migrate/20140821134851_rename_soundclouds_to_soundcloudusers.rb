class RenameSoundcloudsToSoundcloudusers < ActiveRecord::Migration
  def change
    rename_table :soundclouds, :soundcloudusers
  end
end
