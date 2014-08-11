class CreatePinterests < ActiveRecord::Migration
  def change
    create_table :pinterests do |t|
      t.string :brand_id
      t.string :pinterest_username
      t.timestamps
    end
  end
end
