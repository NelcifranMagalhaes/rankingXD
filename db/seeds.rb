# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |index|
   University.create!(name: Faker::University.name ,
   	geral_rate: Faker::Number.between(1,5)
)
end
puts "#######Criadas Universidades#######"
50.times do |index|
   Course.create!(name: Faker::Educator.course ,
   	rate: Faker::Number.between(1,5),
   	average_students: Faker::Number.between(1,5),
   	university_id: rand(1...10)
)
end
puts "#######Criados Cursos#######"
