FactoryBot.define do
  factory :course do
    name {Faker::Educator.course}
    rate {Faker::Number.between(1,5)}
    average_students {Faker::Number.between(1,5)}
    university
  end
end
