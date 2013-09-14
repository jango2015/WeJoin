# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5.times do |i|
  Location.create(title: "Location ##{i}", latitude: 31.239637+i ,longitude: 121.498586+i)
  Activity.create(title: "Activity ##{i}")
end
Activity.find(1).location_ids = [1,2,3]
