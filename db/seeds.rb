# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



#######Agent data######
mike = Agent.create(name:"Mike")
matt = Agent.create(name:"Matt")


########Client data######
eric = Client.create(name: "Eric", age: 30, agent_id: 1)
chase = Client.create(name: "Chase", age: 36, agent_id: 2 )


#########Hotel data#######
