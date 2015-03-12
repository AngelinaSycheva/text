FactoryGirl.define do  factory :user do
	username "MyString"
end
	factory :author do
		name Faker::Name.name
		email Faker::Internet.email
		siti Faker::Adrress.siti
		adrress Faker::Adrress.street_adrress
		born Faker::Date.between(90.yeats.ago, Date.today)
	end
	factory :article do
		avtor
		title Faker::Lorem.sentence
		text Faker::Lorem.sentence(4,true)
	end
	factory :comment do
		posts
		name_avtor avtor
		comment Faker::Lorem.sentence(5,true)
	end
end