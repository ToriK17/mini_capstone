# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
product_1 = Product.create([{ name: 'pet hammock' }, { price: 26 }, {image_url: 'https://img.buzzfeed.com/buzzfeed-static/static/2018-03/26/13/asset/buzzfeed-prod-web-05/sub-buzz-13908-1522084537-2.png?crop=415%3A558%3B0%2C0&downsize=300:*&output-format=auto&output-quality=auto'}, {description: 'keep your pet relaxed and happy'}])

product_2 = Product.create([{ name: 'pocket sand'}, {price: 12}, {image_url: 'https://img.buzzfeed.com/buzzfeed-static/static/2019-02/25/13/asset/buzzfeed-prod-web-02/sub-buzz-13937-1551119971-1.jpg?downsize=600:*&output-format=auto&output-quality=auto'}, {description: 'escape danger quick and easy'}])

product_3 = Product.create([{ name: 'Rocket salt and pepper shaker'}, {price: 50}, {image_url: 'https://www.uncommongoods.com/images/items/49000/49053_1_640px.jpg'}, {description: 'seasoning that will take you places'}])