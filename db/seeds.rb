# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require "csv"

# csv_text = File.read(Rails.root.join("lib", "seeds", "nasdaq_screener_csv.csv"))
# csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
# csv.each do |row|
#   Stock.create({
#     symbol: row["Symbol"],
#     name: row["Name"],
#     last_sale: row["Last Sale"],
#     net_change: row["Net Change"],
#     percentage_change: row["% Change"],
#     market_cap: row["Market Cap"],
#     country: row["Country"],
#     ipo_year: row["IPO Year"],
#     volume: row["Volume"],
#     sector: row["Sector"],
#     industry: row["Industry"],
#   })
# end

# puts "There are now #{Stock.count} rows in the data table"
