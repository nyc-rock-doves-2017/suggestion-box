Suggestion.delete_all
User.delete_all

5.times do 
  User.create(username: Faker::Internet.user_name, password: 'password')
end

10.times do
	Suggestion.create(body: Faker::Lorem.sentence(3), author: Faker::Name.name)
end

