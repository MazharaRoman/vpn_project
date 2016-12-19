class AddWeChatIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :wechat, :string
  end
end
