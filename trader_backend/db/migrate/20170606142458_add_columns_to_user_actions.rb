class AddColumnsToUserActions < ActiveRecord::Migration[5.1]
  def change
    add_column :user_actions, :action, :string
    add_column :user_actions, :current_price, :integer
  end
end
