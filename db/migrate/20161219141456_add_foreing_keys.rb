class AddForeingKeys < ActiveRecord::Migration
  def change
    add_foreign_key :payments, :users
    add_foreign_key :payment_types, :servers
    add_foreign_key :vpns, :servers
    add_foreign_key :vpns, :users
    add_foreign_key :payments, :payment_types
  end
end
