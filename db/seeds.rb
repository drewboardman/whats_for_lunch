# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create([{ username: 'asamarchi', email: 'asamarchi@gmail, .com'}, { username: 'dboardman', email: 'dboardman3@gmail.com'}, { username: 'phong', email: 'phong@gmail.com'}])
restaurants = Restaurant.create([{name: 'Moes', address: "5th Street"}, {name: 'Starbucks', address: "Druid Hills"}])