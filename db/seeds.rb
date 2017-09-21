# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pedal.destroy_all
Pedalboard.destroy_all

board1 = Pedalboard.create(name: 'Mondo', photo_url:'https://static.keymusic.com/products/233581/XL/pedaltrain-novo-32-softcase-4.jpg')

b3k = Pedal.create!(name: 'B3K', style: 'Overdrive', photo_url:'https://www.darkglass.com/app/uploads/2015/08/b3kk.png', pedalboard_id: 1 )
b7k = Pedal.create!(name: 'B7K', style: 'Overdrive', photo_url:'https://www.darkglass.com/app/uploads/2015/08/b7k.png', pedalboard_id: 1 )
ao = Pedal.create!(name: 'Alpha & Omega', style: 'Distortion', photo_url:'https://media.sweetwater.com/api/i/ha-09e422d1ba3fb359__q-85__hmac-7b7c0c3385f95ea801e84e8c80396532cf29f5e9/images/items/1800/AlphaOmega-xlarge.jpg', pedalboard_id: 1 )
symmetry = Pedal.create!(name: 'Super Symmetry', style: 'Compressor', photo_url:'https://media.sweetwater.com/images/items/750/SuperSymm-large.jpg?0a5454d030', pedalboard_id: 1 )
vmt = Pedal.create!(name: 'Vintage Microtubes', style: 'Overdrive', photo_url:'https://www.premierguitar.com/ext/resources/archives/70eb7b90-5321-4c66-8004-1377b5030c14.JPG?1502216638', pedalboard_id: 1 )
vtu = Pedal.create!(name: 'Vintage Microtubes Ultra', style: 'Overdrive', photo_url:'https://media.sweetwater.com/api/i/ha-7febb1d3aaa11e29__q-82__hmac-66a3dc40b483bbe3b61e64fc9077f841361db2f7/images/items/750/VintUltra-large.jpg', pedalboard_id: 1 )
dual = Pedal.create!(name: 'Duality', style: 'Fuzz', photo_url: 'https://www.darkglass.com/app/uploads/2015/08/df1.png', pedalboard_id: 1)
