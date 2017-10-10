class ChangeUserStocks < ActiveRecord::Migration[5.1]
  def change
    remove_column :user_stocks, :company
    add_column :user_stocks, :company_id, :integer
  end
end
