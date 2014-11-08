# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create([{ username: 'asamarchi', email: 'asamarchi@gmail.com', password_digest: "1234"},
 { username: 'dboardman', email: 'dboardman3@gmail.com', password_digest: "1234"},
 { username: 'phong', email: 'phong@gmail.com', password_digest: "1234"}])

restaurants = Restaurant.create([{name: 'Moes', address: "5th Street"}, 
  {name: 'Starbucks', address: "Druid Hills"}])