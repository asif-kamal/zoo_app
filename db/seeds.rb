# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Section.create(name: 'Aquarium', environment: 'Sea Water')
Section.create(name: 'Terrain', environment: 'Rock and sand')
Section.create(name: 'Jungle', environment: 'Humid, forested area')
Section.create(name: 'Tundra', environment: 'Cold, frozen land')
Section.create(name: 'Air Space', environment: 'Sparsely wooded area with open air to fly in')
Section.create(name: 'Marshland', environment: 'Wet earth near fresh water river')