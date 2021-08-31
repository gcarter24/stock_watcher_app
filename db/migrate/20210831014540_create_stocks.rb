class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.string :symbol
      t.string :name
      t.decimal :last_sale, precision: 9, scale: 2
      t.decimal :net_change, precision: 6, scale: 4
      t.decimal :percentage_change, precision: 6, scale: 3
      t.decimal :market_cap, precision: 18, scale: 2
      t.string :country
      t.integer :ipo_year
      t.integer :volume
      t.string :sector
      t.string :industry

      t.timestamps
    end
  end
end
