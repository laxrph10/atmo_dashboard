class CreateTwitters < ActiveRecord::Migration
  def change
    create_table :twitters do |t|
      t.string :brand_id
      t.string :twitter_username
      t.timestamps
    end
  end
end
