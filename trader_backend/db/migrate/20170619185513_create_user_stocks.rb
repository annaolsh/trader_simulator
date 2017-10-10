class CreateUserStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :user_stocks do |t|
      t.integer :user_id
      t.string :company
      t.integer :stocks
      t.timestamps
    end
  end
end
