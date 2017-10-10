class ChangeUserActions < ActiveRecord::Migration[5.1]
  def change
    change_column :user_actions, :income, :float
    change_column :user_actions, :current_price, :float
    remove_column :user_actions, :total, :integer
  end
end
