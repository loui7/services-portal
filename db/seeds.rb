# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Proposal.destroy_all
Service.destroy_all
User.destroy_all

first_names = ["Adam", "Alex", "Aaron", "Ben", "Carl", "Dan", "David", "Edward", "Fred", "Frank", "George", "Hal", "Hank", "Ike", "John", "Jack", "Joe", "Larry", "Monte", "Matthew", "Mark", "Nathan", "Otto", "Paul", "Peter", "Roger", "Roger", "Steve", "Thomas", "Tim", "Ty", "Victor", "Walter"]

last_names = ["Anderson", "Ashwoon", "Aikin", "Bateman", "Bongard", "Bowers", "Boyd", "Cannon", "Cast", "Deitz", "Dewalt", "Ebner", "Frick", "Hancock", "Haworth", "Hesch", "Hoffman", "Kassing", "Knutson", "Lawless", "Lawicki", "Mccord", "McCormack", "Miller", "Myers"]

service_titles = ["Need help fixing leak", "Need service on my car", "Help reinstalling Windows", "Need a website built asap", "Need a lift!", "Need PC repair", "My phone stopped working", "Looking for personal trainer", "Going out of town, need dog-sitter"]

suburbs = ["Albion", "Alderley", "Ascot", "Aspley", "Bald Hills", "Banyo", "Boondall", "Bracken Ridge", "Bridgeman Downs", "Brighton", "Brisbane Airport", "Carseldine", "Chermside", "Chermside West", "Clayfield", "Deagon", "Eagle Farm", "Everton Park", "Ferny Grove", "Fitzgibbon", "Gaythorne", "Geebung", "Gordon Park", "Grange", "Hamilton", "Hendra", "Kalinga", "Kedron", "Keperra", "Lutwyche", "McDowall", "Mitchelton", "Myrtletown", "Newmarket", "Northgate", "Nudgee", "Nudgee Beach", "Nundah", "Pinkenba", "Sandgate", "Shorncliffe", "Stafford", "Stafford Heights", "Taigum", "Virginia", "Wavell Heights", "Wilston", "Windsor", "Wooloowin", "Zillmere"]

for i in 0..10 do
    user = User.new
    user.email = "user#{i}@test.com"
    user.name = first_names.shuffle[0]
    user.surname = last_names.shuffle[0]
    user.password = "password"
    user.save

    for j in 0..2 do
        service = Service.new
        service.user = user
        service.title = service_titles.shuffle[0]
        service.description = "No description has been provided"
        service.location = suburbs.shuffle[0]
        service.save
    end
end