# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

restaurants = Restaurant.create([{name: "Moes", address: "5th Street"},
  {name: "Starbucks", address: "Druid Hills"},
  {name: "McDonald's", address: "Piedmont Ave."},
  {name: "Burger King", address: "Peachtree Rd."},
  {name: "Green Sprout", address: "Piedmont Ave."},
  {name: "Panera Bread", address: "Monroe Ave."},
  {name: "Papa John's", address: "10th St."}])