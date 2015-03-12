# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# 20.times do 
# Author.create(name: Faker::Name.name, email: Faker::Internet.email,citi: Faker::Adrress.citi, adrress: Faker::Adrress)
# end
20.times do
	avtor = FactoryGirl.create(:avtor)
	10.times do
		post = FactoryGirl.create(:post, avtor:avtor)
		10.times do
			comment = FactoryGirl.create(:comment, avtor:avtor, post:post)
		end
	end
end