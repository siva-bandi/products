# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# products = [samsung, redmi, oppo, vivo, realme, nokia, lava, microsoft, lenovo, honor]
# price    = [10000, 8000, 20000, 30000, 15000, 18000, 7000, 14000, 17000, 19000]


Product.create([
	{ name: 'phone', price: 2000 }, 
	{ name: 'laptop', price: 10000 },
	{ name: 'bag', price: 10000 },
	{ name: 'book', price: 10000 },
])