# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

products = Product.create([
  {name: 'Giant Reign', price: 2560.55},
  {name: 'Santa Cruz Nomad', price: 7510.55},
  {name: 'Yeti SB5', price: 8715.55},
])