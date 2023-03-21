# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
u1 = Customer.create({ name: 'Sally', email: 'sally@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa' })
u2 = Customer.create({ name: 'Sue', email: 'sue@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa'})
u3 = Customer.create({ name: 'Kev', email: 'kev@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa' })
u4 = Customer.create({ name: 'Jack', email: 'jack@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa'})

p1 = Product.create({ name: 'Phone', count: 10, price:20000.0})
p2 = Product.create({ name: 'Tv', count: 15, price:15000.0})
p3 = Product.create({ name: 'Charger', count: 30, price:200.0})
p4 = Product.create({ name: 'Phone', count: 10, price:500.0})

s1 = Sale.create({ product_id: p2.id, customer_id: u1.id, date: "10-02-2023" })
s2 = Sale.create({ product_id: p3.id, customer_id: u1.id, date: "10-02-2023" })
s3 = Sale.create({ product_id: p1.id, customer_id: u2.id, date: "15-02-2023" })
s4 = Sale.create({ product_id: p4.id, customer_id: u3.id, date: "20-02-2023" })



