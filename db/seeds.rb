# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

midnightSnack = Grocery.create(item: "Ice cream", qty: 1, comments: "Breyers")
snack = Grocery.create(item: "Kit Kat", qty: 2, comments: "Dark chocolate")
yummy = Grocery.create(item: "Lemons", qty: 5, comments: "Ripe lemons")
thoughts = Note.create(title:"Don't forget again", content: "The trash company picks up every 3rd Wednesday of every 2nd week")
telephone = Contact.create(first_name:'Lorena', last_name:'DaBest', email_address:'lorena@lorena.com', phone_number: 818-555-7777)