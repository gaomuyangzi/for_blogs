FactoryGirl.define do
  factory :engineer do
    sequence(:name) {Faker::Name.name}
    sequence(:number) { |n| n }
    sequence(:section){ ["ねこ部","いぬ部","はむすたー部","くま部"].sample }

    after(:build) do |engineer, evaluator|
        engineer.cakes << FactoryGirl.build(:cake)
      end
      
    # after(:create) do |engineer|
    # 3.times do
    #   create(:relation_cake, engineer_id: engineer.id, cake_id: )
    # end
  end
end

