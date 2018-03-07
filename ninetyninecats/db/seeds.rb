# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat1 = Cat.create!(birth_date: '2012/03/01', color: 'red', name: 'Fuzzy', sex: 'M', description: 'A good cat.')
cat2 = Cat.create!(birth_date: '2011/03/01', color: 'orange', name: 'Hairy', sex: 'F', description: 'A really good cat.')
cat3 = Cat.create!(birth_date: '2010/03/01', color: 'yellow', name: 'Smelly', sex: 'M', description: 'A very good cat.')
cat4 = Cat.create!(birth_date: '2009/03/01', color: 'green', name: 'Catlike', sex: 'F', description: 'A good goodcat.')
cat5 = Cat.create!(birth_date: '2008/03/01', color: 'blue', name: 'AnotherCat', sex: 'M', description: 'A good dog.')
cat6 = Cat.create!(birth_date: '2007/03/01', color: 'purple', name: 'Lastone', sex: 'F', description: 'A sorta good cat.')
