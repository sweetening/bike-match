require 'faker'

puts 'clean db'
Booking.destroy_all
Bike.destroy_all
User.destroy_all
puts 'db is now clean'

# puts 'creating users...'
# 10.times do
#   User.create(
#     email: Faker::Internet.email(domain: 'example'),
#     password: '123456'
#   )
# end

# puts '10 users created'

# puts 'creating bikes'

# Bike.create("Dutch", location:"Kreuzberg", price: rand(10..30), title: "City Rider", user: User.first, address: "Prinzessinnenstraße 21 10969 Berlin")
# Bike.create("Single Speed", location:"Mitte", price: rand(10..30), title: "Fixie", user: User.first, address: "Friedrichstraße 107 10117 Berlin")
# Bike.create("Racing", location:"Pankow", price: rand(10..30), title: "Speed Machine", user: User.first, address: "Vinetastraße 10 13189 Berlin")
# Bike.create("Electric", location:"Spandau", price: rand(10..30), title: "Green Go", user: User.last, address: "Moritzstraße 2, 13597 Berlin")
# Bike.create("Road", location:"Friedrichschain", price: rand(10..30), title: "Elx-28", user: User.last, address: "Kinzigstraße 48 10247 Berlin")
# Bike.create("Moutain", location:"Charlottenburg", price: rand(10..30), title: "Climber", user: User.first, address: "Lietzenseeufer 5 14057 Berlin")

# puts '6 bikes created'

# puts 'creating booking'

# 10.times do
#   users = User.all
#   user = users.sample
#   bikes = Bike.all
#   bike = bikes.sample
#   Booking.create(
#     start_date: Faker::Date.between(from: Date.today, to: 10.days.from_now),
#     end_date: Faker::Date.between(from: 10.days.from_now, to: 30.days.from_now),
#     total_price: rand(30..100),
#     user: user,
#     bike: bike
#     )
# end

# puts 'created 10 booking'

