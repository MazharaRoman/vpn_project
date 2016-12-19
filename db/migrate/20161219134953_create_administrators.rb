class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.string :login
      t.string :password
      t.string :email
      t.timestamps
    end
  end
end
