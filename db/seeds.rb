# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


sample_user = User.create(username: "Jiva", role: "Elephant Caregiver", email: "jiva34@hotmail.com", 
                          password: "password", password_confirmation: "password", 
                          experience_lvl: "22")

          


Section.create(name: 'Terrain', environment: 'Rock and sand', user_id: sample_user.id)
Section.create(name: 'Jungle', environment: 'Humid, forested area', user_id: sample_user.id)
Section.create(name: 'Tundra', environment: 'Cold, frozen land', user_id: sample_user.id)
Section.create(name: 'Air Space', environment: 'Sparsely wooded area with open air to fly in', user_id: sample_user.id)
Section.create(name: 'Marshland', environment: 'Wet earth near fresh water river', user_id: sample_user.id)

