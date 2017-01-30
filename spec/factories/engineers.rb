# FactoryGirl.define do
#   factory :engineer do
#     name "MyString"
#     #連番はこの書き方だと、1から始まる
#     sequence(:number) { |n| n }
#     sequence(:section){ ["ねこ部","いぬ部","はむすたー部","くま部"].sample }
#   end
# end

FactoryGirl.define do
  factory :engineer do
    sequence(:name) {Faker::Name.name}
    sequence(:number) { |n| n }
    sequence(:section){ ["ねこ部","いぬ部","はむすたー部","くま部"].sample }

    after(:build) do |engineer, evaluator|
        engineer.cakes << FactoryGirl.build(:cake)
        # engineer.relation_cakes << FactoryGirl.build(:relation_cake)
      end
      
    # after(:create) do |engineer|
    # 3.times do
    #   create(:relation_cake, engineer_id: engineer.id, cake_id: )
    # end
  end
      
end

