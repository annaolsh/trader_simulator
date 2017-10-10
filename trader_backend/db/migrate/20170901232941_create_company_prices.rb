class CreateCompanyPrices < ActiveRecord::Migration[5.1]
  def change
    create_table :company_prices do |t|
      t.integer :company_id
      t.integer :date
      t.integer :time
      t.integer :price

      t.timestamps
    end
  end
end
