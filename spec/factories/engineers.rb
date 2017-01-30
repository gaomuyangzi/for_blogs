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
    
    after(:build) do |engineer|
      engineer.cakes << FactoryGirl.build(:cake)
    end

    # transient do
    #   trans_cake_id 1
    # end
    
    # after(:build) do |engineer, evaluator|
    #   engineer.cakes << FactoryGirl.build(:cake, id: evaluator.trans_cake_id)
    # end
  end
end
