# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do |x|
    user = User.create(name: "#{x+1}-01-2021", consult: Random.rand(0..30000))
end

20.times do |y|
    value = Value.create(date: "#{y+1}-01-2021", value: Random.rand(0..30000))
end