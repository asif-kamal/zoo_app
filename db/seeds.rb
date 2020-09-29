# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Animal.create(name: "Elephants", health_rating: "7", section_id: 6)
Animal.create(name: "Tigers", health_rating: "9", section_id: 2)
Animal.create(name: "Birds of Paradise", health_rating: "3", section_id: 7)
Animal.create(name: "Chipmunks", health_rating: "8", section_id: 5)
Animal.create(name: "Eagles", health_rating: "4", section_id: 4)
Animal.create(name: "Lizards", health_rating: "5", section_id: 6)
Animal.create(name: "Cayote", health_rating: "7", section_id: 1)
Animal.create(name: "Penguins", health_rating: "7", section_id: 3)
          


Section.create(name: 'Terrain', environment: 'Rock and sand')
Section.create(name: 'Jungle', environment: 'Humid, forested area')
Section.create(name: 'Tundra', environment: 'Cold, frozen land')
Section.create(name: 'Air Space', environment: 'Sparsely wooded area with open air to fly in')
Section.create(name: 'Marshland', environment: 'Wet earth near fresh water river')
Section.create(name: 'Flatlands', environment: 'Plains reminiscent of the Serengheti')
Section.create(name: 'Seaside', environment: 'Sand near blue water and tropical trees')
