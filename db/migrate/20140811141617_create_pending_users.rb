class CreatePendingUsers < ActiveRecord::Migration
  def change
    create_table :pending_users do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :company_name
      t.string :reason
      t.text   :message
      t.timestamps
    end
  end
end
