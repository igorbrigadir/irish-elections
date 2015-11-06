# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

AdminUser.create!(email: 'ied@storyful.com', password: 'password', password_confirmation: 'password')

constituencies = CSV.foreach("#{Rails.root}/db/data/constituencies.csv").map { |name, seats| { name: name, num_seats: seats } }

Constituency.create constituencies