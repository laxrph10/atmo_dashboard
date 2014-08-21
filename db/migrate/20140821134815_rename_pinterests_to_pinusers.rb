class RenamePinterestsToPinusers < ActiveRecord::Migration
  def change
    rename_table :pinterests, :pinusers
  end
end
