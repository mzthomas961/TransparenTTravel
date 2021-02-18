# This file should contain all record creation needed to seed database with its default values.
# data can  be loaded with bin/rails db:seed command (or created alongside database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



#######Agent data######
mike = Agent.create(name:"Mike", password:"abc123", username:"mike123")


########Client data######
carmelo = Client.create(name: "Carmelo Anthony", age: 36, agent_id: 1)
shaq = Client.create(name: "Shaquille O'neal", age: 48, agent_id: 1)
lebron = Client.create(name: "LeBron James", age: 36, agent_id: 1)
magic = Client.create(name: "Magic Johnson", age: 61, agent_id: 1)
penny = Client.create(name: "Penny Hardaway", age: 49, agent_id: 1)


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
v2= Vacation.create(hotel_id: 4, client_id: 1, airline_id: 5, destination: "Dominican Republic", date: "06/10/2021", airline_price: 500.13, hotel_price: 250.56)
v3= Vacation.create(hotel_id: 3, client_id: 1, airline_id: 2, destination: "Brazil", date: "08/10/2022", airline_price: 800.95, hotel_price: 301.78)
v4= Vacation.create(hotel_id: 5, client_id: 1, airline_id: 3, destination: "Dubai", date: "06/13/2022", airline_price: 456.39, hotel_price: 2564.78)


puts "!!!SEEDED!!!!"