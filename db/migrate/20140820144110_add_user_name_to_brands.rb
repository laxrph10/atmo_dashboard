class AddUserNameToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :user_name, :string
  end
end
