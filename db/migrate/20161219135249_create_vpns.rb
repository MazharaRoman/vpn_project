class CreateVpns < ActiveRecord::Migration
  def change
    create_table :vpns do |t|
      t.integer :server_id
      t.integer :user_id
      t.string :login
      t.string :password
      t.timestamps
    end
  end
end
