FactoryBot.define do
  factory :university do
    name {Faker::University.name}
    geral_rate {Faker::Number.between(1,5)}
  end
end
