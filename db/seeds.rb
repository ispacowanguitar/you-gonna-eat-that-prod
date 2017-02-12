Lunch.create(title: "initial lunch", date: "2017-1-1")

30.times do 
	Eater.create(name: Faker::Name.name)
end