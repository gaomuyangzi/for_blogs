# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :relation_cake do
    sequence(:engineer_id) {Faker::Number.number(4)}
    sequence(:cake_id) {Faker::Number.number(4)}
    
      after(:build) do |relation_cake, evaluator|
        relation_cake.engineer = FactoryGirl.build(:engineer, id: evaluator.engineer_id)
        relation_cake.cake = FactoryGirl.build(:cake, id: evaluator.cake_id)
  end
 end
end
