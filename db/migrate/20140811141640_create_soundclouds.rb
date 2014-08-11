class CreateSoundclouds < ActiveRecord::Migration
  def change
    create_table :soundclouds do |t|
      t.string :brand_id
      t.string :soundcloud_username
      t.timestamps
    end
  end
end
