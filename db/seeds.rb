# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Aviron',
    address:      '9 Place Du Calvaire, Cancale',
    category:     'belgian',
    phone_number: '05 99 89 00 01'
  },
  {
    name:         'Breizh Café',
    address:      'La Houle, Cancale',
    category:     'japanese',
    phone_number: '05 99 89 00 02'
  },
  {
    name:         'Chez Maman',
    address:      '5 rue des Parcs, Cancale',
    category:     'french',
    phone_number: '05 99 89 00 03'
  },
  {
    name:         'La bonne huître',
    address:      '3 rue bleu pale, Cancale',
    category:     'belgian',
    phone_number: '05 99 89 00 04'
  },
  {
    name:         'Snack frat',
    address:      'le bourg, Cancale',
    category:     'italian',
    phone_number: ''
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
