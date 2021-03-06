# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require_relative './seeder/categories'
require_relative './seeder/suppliers'
require_relative './seeder/stocks'

Seeder::Categories.new('db/yaml/categories.yml', Logger.new($stdout)).seed
Seeder::Suppliers.new('db/yaml/suppliers.yml', Logger.new($stdout)).seed
Seeder::Stocks.new('db/yaml/stocks.yml', Logger.new($stdout)).seed
