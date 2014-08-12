class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :brand_name
      t.string :website
      t.string :phone
      t.string :email
      t.string :address
      t.string :description
      t.string :company_name
      t.string :company_representative_name
      t.string :avatar_img
      t.string :header_img
      t.string :auth_token
      t.string :secret_code
      t.timestamps
    end
  end
end
