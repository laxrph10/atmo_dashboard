class CreateVimeos < ActiveRecord::Migration
  def change
    create_table :vimeos do |t|
      t.string :brand_id
      t.string :vimeo_username
      t.timestamps
    end
  end
end
