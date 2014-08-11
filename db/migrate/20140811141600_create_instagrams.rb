class CreateInstagrams < ActiveRecord::Migration
  def change
    create_table :instagrams do |t|
      t.string :brand_id
      t.string :instagram_username
      t.timestamps
    end
  end
end
