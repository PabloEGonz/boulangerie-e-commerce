# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Product.create(name: "French Bread", price: 3, category: "Bread", description: "A long loaf of bread with a crispy crust and soft interior.", image: "https://i2.wp.com/epicureandculture.com/wp-content/uploads/2014/12/shutterstock_172040546.jpg", stock: 10)
Product.create!(name: "French Bread", price: 4, category: "Bread", description: "A long loaf of bread with a crispy crust and soft interior.", image: "https://i2.wp.com/epicureandculture.com/wp-content/uploads/2014/12/shutterstock_172040546.jpg", stock: 10)
Product.create!(name: "French Bread", price: 5, category: "Bread", description: "A long loaf of bread with a crispy crust and soft interior.", image: "https://i2.wp.com/epicureandculture.com/wp-content/uploads/2014/12/shutterstock_172040546.jpg", stock: 10)
