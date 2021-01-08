require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#12 cities
# sd = City.create(name: "San Diego")
# sm = City.create(name: "Santa Monica") 
# fres = City.create(name: "Fresno")
# hay = City.create(name: "Hayward")
# sea = City.create(name: "Seattle")
# gig = City.create(name: "Gig Harbor")
# mnr = City.create(name: "Monroe")
# sanjo = City.create(name: "San Jose")
# sf = City.create(name: "San Francisco")
# sono = City.create(name: "Sonoma")
# montana = City.create(name: "Glasgow")
# other = City.create(name: "-Other-")

#20 plants
# p1 = Plant.create(name: "Pothos", latin_name: "Pothos", difficulty: "Easy", plant_type: "Tropical", rarity: "Common")
# p2 = Plant.create(name: "Monstera", latin_name: "Monstera Deliciosa", difficulty: "Easy", plant_type: "Tropical", rarity: "Common")
# p3 = Plant.create(name: "Spider Plant", latin_name: "Chlorophytum Comosum", difficulty: "Easy", plant_type: "Tropical", rarity: "Common")
# p4 = Plant.create(name: "ZZ Plant", latin_name: "Zamioculcas Zamiifolia", difficulty: "Easy", plant_type: "Tropical", rarity: "Common")
# p5 = Plant.create(name: "Rattlesnake Calathea", latin_name: "Calathea Lancifolia", difficulty: "Intermediate", plant_type: "Tropical", rarity: "Common")
# p6 = Plant.create(name: "Snake Plant", latin_name: "Sansevieria", difficulty: "Easy", plant_type: "Succulent", rarity: "Common")
# p7 = Plant.create(name: "Aloe", latin_name: "Aloe Vera", difficulty: "Easy", plant_type: "Succulent", rarity: "Common")
# p8 = Plant.create(name: "African Milk Bush", latin_name: "Euphorbia Prigona", difficulty: "Easy", plant_type: "Succulent", rarity: "Common")
# p9 = Plant.create(name: "Anthurium Clarinervium", latin_name: "Anthurium Clarinervium", difficulty: "Advanced", plant_type: "Tropical", rarity: "Rare")
# p10 = Plant.create(name: "Alocasia Black Velvet", latin_name: "Alocasia Reginula", difficulty: "Advanced", plant_type: "Tropical", rarity: "Rare")
# p11 = Plant.create(name: "Bird of Paradise", latin_name: "Strelitzia", difficulty: "Intermediate", plant_type: "Tropical", rarity: "Common")
# p12 = Plant.create(name: "Mini Monstera", latin_name: "Rhaphidophora Tetrasperma", difficulty: "Intermediate", plant_type: "Tropical", rarity: "Rare")
# p13 = Plant.create(name: "Alocasia Green Velvet", latin_name: "Alocasia Frydek", difficulty: "Advanced", plant_type: "Tropical", rarity: "Rare")
# p14 = Plant.create(name: "Dumb Cane", latin_name: "Dieffenbachia", difficulty: "Easy", plant_type: "Tropical", rarity: "Common")
# p15 = Plant.create(name: "Peace Lily", latin_name: "Spathiphyllum Wallisii", difficulty: "Intermediate", plant_type: "Tropical", rarity: "Common")
# p16 = Plant.create(name: "Spotted Begonia", latin_name: "Begonia Maculata", difficulty: "Advanced", plant_type: "Tropical", rarity: "Rare")
# p17 = Plant.create(name: "Peruvian Apple Cactus", latin_name: "Cereus Repandus", difficulty: "Easy", plant_type: "Succulent", rarity: "Common")
# p18 = Plant.create(name: "Fiddle Leaf Fig", latin_name: "Ficus Lyrata", difficulty: "Intermediate", plant_type: "Tropical", rarity: "Common")
# p19 = Plant.create(name: "Rubber Tree", latin_name: "Ficus Elastica", difficulty: "Intermediate", plant_type: "Tropical", rarity: "Common")
# p20 = Plant.create(name: "Watermelon Peperomia", latin_name: "Peperomia Argyreia", difficulty: "Easy", plant_type: "Tropical", rarity: "Common")

# 40.times do 
#   User.create(name: Faker::Name.name, experience: ["I dabble", "Green thumb", "Plant wizard"].sample, city_id: City.all.sample.id, password: Faker::Color.hex_color)
# end

# 50.times do
#   UserPlant.create(user_id: User.all.first(10).sample.id, plant_id: Plant.all.sample.id)
# end


# 10.times do 
#   Listing.create(parent_id: User.parents.sample.id, length_of_stay: [4, 5, 6, 7, 3].sample, city_id: City.all.sample.id, compensation: [20, 25, 30, 40, 50].sample)
# end