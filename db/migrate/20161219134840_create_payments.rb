class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :payment_type_id
      t.integer :user_id
      t.integer :amount
      t.timestamps
    end
  end
end
