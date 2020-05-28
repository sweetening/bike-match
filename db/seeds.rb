# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'clean db'
Booking.destroy_all
Bike.destroy_all
User.destroy_all
puts 'db is now clean'

puts 'creating users...'
10.times do
  User.create(
    email: Faker::Internet.email(domain: 'example'),
    password: '123456'
  )
end

puts '10 users created'

puts 'creating bikes'

bike_dutch = Bike.create("Dutch", location:"Kreuzberg", price: rand(10..30), title: "City Rider", photos: "", user: User.first, latitude: 52.5025416, longitude: 13.4107707, address: "Prinzessinnenstraße 21 10969 Berlin")
bike_ss = Bike.create("Single Speed", location:"Mitte", price: rand(10..30), title: "Fixie", photos: "", user: User.first, latitude: 52.5240494, longitude: 13.3865322, address: "Friedrichstraße 107 10117 Berlin")
bike_race = Bike.create("Racing", location:"Pankow", price: rand(10..30), title: "Speed Machine", photos: "", user: User.first, latitude: 52.5586085, longitude: 13.4170467, address: "Vinetastraße 10 13189 Berlin")
bike_electric = Bike.create("Electric", location:"Spandau", price: rand(10..30), title: "Green Go", photos: "", user: User.last, latitude: 52.5378675, longitude: 13.201096, address: "Moritzstraße 2, 13597 Berlin")
bike_road = Bike.create("Road", location:"Friedrichschain", price: rand(10..30), title: "Elx-28", photos: "", user: User.last, latitude: 52.5114755, longitude: 13.4619038, address: "Kinzigstraße 48 10247 Berlin")
bike_mountain = Bike.create("Moutain", location:"Charlottenburg", price: rand(10..30), title: "Climber", photos: "", user: User.first, latitude: 52.5075298, longitude: 13.2890574, address: "Lietzenseeufer 5 14057 Berlin")

puts '6 bikes created'

puts 'creating booking'

10.times do
  users = User.all
  user = users.sample
  bikes = Bike.all
  bike = bikes.sample
  Booking.create(
    start_date: Faker::Date.between(from: Date.today, to: 10.days.from_now),
    end_date: Faker::Date.between(from: 10.days.from_now, to: 30.days.from_now),
    total_price: rand(30..100),
    user: user,
    bike: bike
    )
end

puts 'created 10 booking'


# dutch = Bike.create(category: "dutch", location: "Amsterdam",price:"15", title:"", image_url:"https://source.unsplash.com/500x400/?bicycle", user_id:"1", longitud:"", latitud:"" )
# electric = Bike.create(category: "electric", location: "Berlin",price:"13", title:"", image_url:"https://source.unsplash.com/500x400/?bicycle", user_id:"2", longitud:"", latitud:"" )
# racing = Bike.create(category: "racing", location: "Múnich",price:"16", title:"", image_url:"https://source.unsplash.com/500x400/?bicycle", user_id:"3", longitud:"", latitud:"" )
# bmx = Bike.create(category: "bmx", location: "Lisbon",price:"15", title:"", image_url:"https://source.unsplash.com/500x400/?bicycle", user_id:"4", longitud:"", latitud:"" )
# road = Bike.create(category: "road", location: "Berlin",price:"12", title:"", image_url:"https://source.unsplash.com/500x400/?bicycle", user_id:"5", longitud:"", latitud:"" )
# mountain = Bike.create(category: "bmx", location: "Lisbon",price:"15", title:"", image_url:"https://source.unsplash.com/500x400/?bicycle", user_id:"4", longitud:"", latitud:"" )
# single_speed = Bike.create(category: "road", location: "Berlin",price:"12", title:"", image_url:"https://source.unsplash.com/500x400/?bicycle", user_id:"5", longitud:"", latitud:"" )


# 6.times do
#   Bike.create(
#     category:["Dutch", "Electric", "Racing", "BMX", "Road", "Mountain", "Tandem", "Cruiser", "Single Speed", "Track"].sample,
#     location: Faker::Address.city,
#     price: rand(1..15),
#     title: Faker::App.name,
#     image_url: "https://source.unsplash.com/500x400/?bicycle" ,
#     user_id: Faker::Number.between(from: 1, to: 10),
#     longitud: Faker::Address.longitude,
#     latitud: Faker::Address.latitude
#   )
# end
