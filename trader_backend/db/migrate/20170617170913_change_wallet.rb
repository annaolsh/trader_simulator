class ChangeWallet < ActiveRecord::Migration[5.1]
  def change
    change_column :wallets, :amount, :float
  end
end
