class RenameVimeosToVimeousers < ActiveRecord::Migration
  def change
    rename_table :vimeos, :vimeousers
  end
end
