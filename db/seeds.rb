# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Brooklyn = City.create(name: "Brooklyn", state: "NY", zipcode: 11220, description: "Somewhat popular part of New York City");
Queens = City.create(name: "Queens", state: "NY", zipcode: 11367, description: "Another popular part of New York City with some great restaurants");

SandwichShop.create(name: "Subway", description: "Makes a variety of sandwiches", city: Brooklyn);
SandwichShop.create(name: "Burger King", description: "A fast food restaurant that sell a variety of sandwiches and other fried food, like McDonalds", city: Queens);
SandwichShop.create(name: "McDonalds", description: "A fast food restaurant that sell a variety of sandwiches and other fried food", city: Brooklyn);
