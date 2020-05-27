# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dutch = Bike.create(category: "dutch", location: "Amsterdam",price:"15", title:"", image_url:"https://source.unsplash.com/500x400/?bicycle", user_id:"1", longitud:"", latitud:"" )
electric = Bike.create(category: "electric", location: "Berlin",price:"13", title:"", image_url:"https://source.unsplash.com/500x400/?bicycle", user_id:"2", longitud:"", latitud:"" )
racing = Bike.create(category: "racing", location: "Múnich",price:"16", title:"", image_url:"https://source.unsplash.com/500x400/?bicycle", user_id:"3", longitud:"", latitud:"" )
bmx = Bike.create(category: "bmx", location: "Lisbon",price:"15", title:"", image_url:"https://source.unsplash.com/500x400/?bicycle", user_id:"4", longitud:"", latitud:"" )
road = Bike.create(category: "road", location: "Berlin",price:"12", title:"", image_url:"https://source.unsplash.com/500x400/?bicycle", user_id:"5", longitud:"", latitud:"" )
mountain = Bike.create(category: "bmx", location: "Lisbon",price:"15", title:"", image_url:"https://source.unsplash.com/500x400/?bicycle", user_id:"4", longitud:"", latitud:"" )
single_speed = Bike.create(category: "road", location: "Berlin",price:"12", title:"", image_url:"https://source.unsplash.com/500x400/?bicycle", user_id:"5", longitud:"", latitud:"" )


6.times do
  Bike.create(
    category:["Dutch", "Electric", "Racing", "BMX", "Road", "Mountain", "Tandem", "Cruiser", "Single Speed", "Track"].sample,
    location: Faker::Address.city,
    price: rand(1..15),
    title: Faker::App.name,
    image_url: "https://source.unsplash.com/500x400/?bicycle" ,
    user_id: Faker::Number.between(from: 1, to: 10),
    longitud: Faker::Address.longitude,
    latitud: Faker::Address.latitude,
    )



