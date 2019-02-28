# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Restaurant.destroy_all
Review.destroy_all

# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

saladbar = Restaurant.create(name: 'Saladbar', address: 'Barcelona', category: 'french')
frenchbistro = Restaurant.create(name: 'Frenchbistro', address: 'Paris', category: 'japanese')
bigmac = Restaurant.create(name: 'BigMac', address: 'London', category: 'italian')
sushishop = Restaurant.create(name: 'Sushishop', address: 'London', category: 'belgian')
allvegan = Restaurant.create(name: 'Allvegan', address: 'London', category: 'belgian')

Review.create(content: "great restaurant", rating: 4, restaurant: saladbar)
Review.create(content: "best food ever!!", rating: 5, restaurant: saladbar)
Review.create(content: "disaster", rating: 0, restaurant: saladbar)
