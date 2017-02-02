FactoryGirl.define do
  factory :engineer do
    sequence(:name) {Faker::Name.name}
    sequence(:number) {Faker::Number.number(4)}
    sequence(:section){ ["インフラ部","フロントエンド部","デザイン部"].sample }

    after(:build) do |engineer|
        engineer.cakes << FactoryGirl.build(:cake)
      end
  end
end
