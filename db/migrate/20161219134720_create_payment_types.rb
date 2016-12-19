class CreatePaymentTypes < ActiveRecord::Migration
  def change
    create_table :payment_types do |t|
      t.integer :year
      t.integer :month
      t.integer :day
      t.integer :price
      t.integer :server_id
      t.timestamps
    end
  end
end
