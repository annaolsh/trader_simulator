class AddColumnsToUserActions2 < ActiveRecord::Migration[5.1]
  def change
    add_column :user_actions, :company, :name
  end
end
