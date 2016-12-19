class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :type
      t.string :ip
      t.string :region
      t.string :server_user
      t.string :key
      t.string :configPath
      t.timestamps
    end
  end
end
