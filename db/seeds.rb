# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
Category.delete_all

c1 = Category.create!(name: "Computación")
c2 = Category.create!(name: "Electrodomésticos")
c3 = Category.create!(name: "Tecnología")

c1.products.build(name: "Mouse", price: 30000).save
c1.products.build(name: "Teclado", price: 70000).save
c1.products.build(name: "Monitor", price: 200000).save

c2.products.build(name: "Microondas", price: 20000).save
c2.products.build(name: "Refrigerador", price: 300000).save
c2.products.build(name: "Cafetera", price: 70000).save

c3.products.build(name: "Cámara", price: 300000).save
c3.products.build(name: "Televisor", price: 1000000).save
p1 = Product.create!(name: "Hometheater", price: 500000, category_id: c3.id)

p1.destroy


