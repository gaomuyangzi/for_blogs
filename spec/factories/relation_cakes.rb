# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :relation_cake do
    transient do
      trans_engineer_id { generate :number_6 }
      trans_cake_id { generate :number_6 }
    end
     after(:create) do |user, evaluator|
    if evaluator.friends_count > 0
      create_list :friendship, evaluator.friends_count, user: user
    end
   end
  end
end
