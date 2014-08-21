class RenameInstagramsToInstausers < ActiveRecord::Migration
  def change
    rename_table :instagrams, :instausers
  end
end
