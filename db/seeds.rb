# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pedal.destroy_all
Pedalboard.destroy_all

board1 = Pedalboard.create(name: 'Mondo', photo_url:'/images/pedalboard1.png')

b3k = Pedal.create(name: 'B3K', style: 'Overdrive', photo_url:'https://www.darkglass.com/app/uploads/2015/08/b3kk.png')
