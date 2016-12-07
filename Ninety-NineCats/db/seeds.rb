# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Cat.destroy_all
Cat.create(name: 'Fluffy', sex: 'M', color: 'white', description: 'sdsvchwdfhwve', birth_date: '2004-12-06')
Cat.create(name: 'Whiskers', sex: 'F', color: 'black', description: 'sdsvchwdfhwve', birth_date: '2004-12-06')
Cat.create(name: 'Evil Kanivel', sex: 'F', color: 'orange', description: 'sdsvchwdfhwve', birth_date: '2004-12-06')
Cat.create(name: 'Bubba', sex: 'M', color: 'grey', description: 'sdsvchwdfhwve', birth_date: '2004-12-06')
Cat.create(name: 'Bad Cat', sex: 'F', color: 'black', description: 'sdsvchwdfhwve', birth_date: '2004-12-06')
