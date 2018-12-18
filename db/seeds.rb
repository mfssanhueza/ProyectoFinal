# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |p|
  Product.create(
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price.to_i,
    photo: "https://picsum.photos/200/300?image=#{6 + p}",
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.'
  )
end
