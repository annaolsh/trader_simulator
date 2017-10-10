class AddColumnToUserActions < ActiveRecord::Migration[5.1]
  def change
    add_column :user_actions, :shares, :integer
  end
end
