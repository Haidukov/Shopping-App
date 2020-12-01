require 'csv'

namespace :db do
  desc "TODO"
  task fill_from_csv: :environment do
    csvLines = CSV.read("../web-parser/output/macbooks.csv", :headers => true)
    csvLines.each do |line|
      name = line[1]
      price = line[2]
      formattedPrice = (price[1..-1]).gsub! ',', ''
      ShoppingItem.create({
        name: name,
        price: formattedPrice,
        imageUrl: line[3]
      })
    end
  end

end
