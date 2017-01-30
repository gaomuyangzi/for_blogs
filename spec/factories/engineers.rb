FactoryGirl.define do
  factory :engineer do
    sequence(:name) {Faker::Name.name}
    sequence(:number) {Faker::Number.number(4)}
    sequence(:section){ ["ねこ部","いぬ部","はむすたー部","くま部"].sample }

    after(:build) do |engineer,evaluator|
        engineer.cakes << FactoryGirl.build(:cake)
      end
  end
end
