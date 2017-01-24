Product.delete_all
Category.delete_all
OrderStatus.delete_all

book = Category.create(name: "Books")
car = Category.create(name: "Cars")
ele = Category.create(name: "Electronics")
fasion = Category.create(name: "Fasion")
toys = Category.create(name: "Toys & Hobbies")
sport = Category.create(name: "Sport")
art = Category.create(name: "Collectibles & Art")
ent = Category.create(name: "Entertainment")
home = Category.create(name: "Home & Garden")
puts "CATEGORIES CREATED"

Product.create(category: ele, name: "Apple Iphone", price: Faker::Commerce.price, description: Faker::Lorem.paragraph(2, false, 10), active: true)
Product.create(category: ele, name: "Apple Macbook", price: Faker::Commerce.price, description: Faker::Lorem.paragraph(2, false, 10), active: true)
Product.create(category: book, name: "Harry Potter", price: Faker::Commerce.price, description: Faker::Lorem.paragraph(2, false, 10), active: true)
Product.create(category: fasion, name: "T-Shirt", price: Faker::Commerce.price, description: Faker::Lorem.paragraph(2, false, 10), active: true)
Product.create(category: toys, name: "Lego Army", price: Faker::Commerce.price, description: Faker::Lorem.paragraph(2, false, 10), active: true)
Product.create(category: sport, name: "Nike Vapor", price: Faker::Commerce.price, description: Faker::Lorem.paragraph(2, false, 10), active: true)
Product.create(category: art, name: "Kossak", price: Faker::Commerce.price, description: Faker::Lorem.paragraph(2, false, 10), active: true)
Product.create(category: ent, name: "Justin Bieber", price: Faker::Commerce.price, description: Faker::Lorem.paragraph(2, false, 10), active: true)
Product.create(category: home, name: "Modern Lamp", price: Faker::Commerce.price, description: Faker::Lorem.paragraph(2, false, 10), active: true)
Product.create(category: car, name: "Porshe", price: Faker::Commerce.price, description: Faker::Lorem.paragraph(2, false, 10), active: true)
Product.create(category: car, name: "Volvo", price: Faker::Commerce.price, description: Faker::Lorem.paragraph(2, false, 10), active: true)
Product.create(category: car, name: "Skoda", price: Faker::Commerce.price, description: Faker::Lorem.paragraph(2, false, 10), active: true)
puts "PRODUCTS CREATED"

OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"
puts "STATUSES CREATED"
