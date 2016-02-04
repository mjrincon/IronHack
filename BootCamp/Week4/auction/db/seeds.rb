puts

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "MJRincon", email: "mathewjrincon@gmail.com")

Product.create(name: "PS4", description: "Brand New PS4", deadline: DateTime.new(2016,3,1,12) )
