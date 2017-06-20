Suggestion.delete_all

10.times do
	Suggestion.create(body: Faker::Lorem.sentence(3), author: Faker::Name.name)
end