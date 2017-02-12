Lunch.create(title: "initial lunch", date: "2017-1-1")

25.times do 
	Eater.create(name: Faker::Name.name)
end