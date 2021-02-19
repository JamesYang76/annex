# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


(1..30).each do |number|
  category = Category.find_or_create_by(name: "Category_#{number}")
  supplier = Supplier.find_or_create_by(name: "Supplier_#{number}")
  category.stocks.create(supplier: supplier,name: "Stock_#{number}")
end

