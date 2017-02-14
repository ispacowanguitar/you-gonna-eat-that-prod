Lunch.delete_all
Eater.delete_all
Lunch.create(title: "initial lunch", date: "2017-1-1", generated: false)

30.times do 
	Eater.create(name: Faker::Name.name, email: Faker::Internet.email)
end