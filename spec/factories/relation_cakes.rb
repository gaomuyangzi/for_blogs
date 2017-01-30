# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :relation_cake do
    sequence(:engineer_id) { |n| n }
    sequence(:cake_id) { |n| n }
    
    # transient do
    #   trans_engineers_id 1
    #   trans_cake_id 1
    # end

  # after(:build) do |relation_matome_hash_tag, evaluator|
  #     matome                                   = FactoryGirl.build(:matome,
  #                                                                 :with_user,
  #                                                                 id:                       evaluator.trans_matome_id,
  #                                                                 trans_matome_hash_tag_id: evaluator.trans_matome_hash_tag_id)
  #     relation_matome_hash_tag.matome          = matome
  #     relation_matome_hash_tag.matome_hash_tag = matome.matome_hash_tags[0]
  #   end

      after(:build) do |relation_cake, evaluator|
        relation_cake.engineer = FactoryGirl.build(:engineer, id: evaluator.engineer_id)
  end
 end
end
