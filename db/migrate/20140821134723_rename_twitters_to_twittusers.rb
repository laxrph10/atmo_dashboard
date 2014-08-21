class RenameTwittersToTwittusers < ActiveRecord::Migration
  def change
    rename_table :twitters, :twittusers
  end
end
