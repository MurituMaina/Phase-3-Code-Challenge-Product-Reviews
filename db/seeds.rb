# require 'faker'
# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(name: "Johm Deleting")
user2 = User.create(name: "Mike Smith")
user3 = User.create(name: "Natella Smith")
# user1 = User.create(name: Faker::Name.name)
# user2 = User.create(name: Faker::Name.name)
# user3 = User.create(name: Faker::Name.name)

puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)

puts "Creating reviews..."
# *****************************************************************
# * TODO: create reviews! Remember, a review belongs to a product *
# * and a review belongs to an user.                              *
# *****************************************************************
# Create Reviews Here
review1 = Review.create(comment:"Best product ever!", star_rating:5, user_id:2, product_id:4)
review2 = Review.create(comment:"Boring product ever!", star_rating:1, user_id:2, product_id:1)
review3 = Review.create(comment:"New and interesting product ever!", star_rating:5, user_id:3, product_id:5)
review4 = Review.create(comment:"Cant use this product ever again!", star_rating:5, user_id:2, product_id:3)
review5 = Review.create(comment:"Not good around chikdren", star_rating:2, user_id:1, product_id:1)


puts "Seeding done!"