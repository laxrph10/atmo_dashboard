class CreatePinterests < ActiveRecord::Migration
  def change
    create_table :pinterests do |t|

      t.timestamps
    end
  end
end
