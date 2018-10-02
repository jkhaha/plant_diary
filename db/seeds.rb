# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all


mckenzie = User.create(name: "McKenzie ")

pepperoini = Plant.create(nickname: "Pepperoni", plant_species: "Pilea", age: "6 months", description: "terra cotta pot", location: "Window Sill", image_url: "http://plantsinyogapants.com/wp-content/uploads/2018/07/pilea-e1530911926287-1080x1317.jpg", watering_schedule: "Once a week", user_id: 5 )
# Plant.create(nickname: , plant_species: , age:, description: , location: , image_irl: , watering_schedule:, user_id:)
# Plant.create(nickname: , plant_species: , age:, description: , location: , image_irl: , watering_schedule:, user_id:)
# Plant.create(nickname: , plant_species: , age:, description: , location: , image_irl: , watering_schedule:, user_id:)
# Plant.create(nickname: , plant_species: , age:, description: , location: , image_irl: , watering_schedule:, user_id:)
