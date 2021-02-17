# This file should contain all record creation needed to seed database with its default values.
# data can  be loaded with bin/rails db:seed command (or created alongside database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



#######Agent data######
mike = Agent.create(name:"Mike", password:"abc123", username:"mike123")
matt = Agent.create(name:"Matt", password:"abc456", username:"matt123")

########Client data######
eric = Client.create(name: "Eric", age: 30, agent_id: 1)
chase = Client.create(name: "Chase", age: 36, agent_id: 2 )


#########Hotel data#######
marriott =Hotel.create(name: "Marriott Inn")
hilton =Hotel.create(name: "The Hilton")
ramada =Hotel.create(name: "Ramada Inn")
trump =Hotel.create(name: "Trump Towers")
four_seasons =Hotel.create(name: "The Four Seasons")
quality_inn =Hotel.create(name: "Quality Inn")
super_8 =Hotel.create(name: "Super 8 Motel")
double_tree =Hotel.create(name: "DoubleTree Hotel")
ballys =Hotel.create(name: "Ballys Hotel")
hardrock =Hotel.create(name: "Hardrock Hotel")
ritz_carlton =Hotel.create(name: "The Ritz Carlton")
caesars_palace =Hotel.create(name: "Caesars Palace")


####Airlines data########
delta =Airline.create(name:"Delta Airlines")
american_airlines =Airline.create(name:"American Airlines")
jetblue =Airline.create(name:"Jetblue Airlines")
spirit =Airline.create(name:"Spirit Airlines")
united =Airline.create(name:"United Airlines")
southwest =Airline.create(name:"SouthWest Airlines")
frontier =Airline.create(name:"Frontier Airlines")
virgin_atlantic =Airline.create(name:"Virgin Atlantic")

#####vacation data######
v1= Vacation.create(hotel_id: 1, client_id: 1, airline_id: 1, destination: "Egypt", date: "07/07/2021", airline_price: 700.39, hotel_price: 200.78)
v2= Vacation.create(hotel_id: 4, client_id: 2, airline_id: 5, destination: "Dominican Republic", date: "06/10/2021", airline_price: 500.13, hotel_price: 250.56)

puts "!!!SEEDED!!!!"