# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :relation_cake do
    sequence(:engineer_id) { |n| n }
    sequence(:cake_id) { |n| n }
    
    
    
    
    # transient do
    #   trans_engineers_id 1
    #   trans_cake_id 1
    # end
  
    # # userに関連したpostを作成する
    #   #   user - 作成されたuserインスタンス自身
    #   #   evaluator - ignore(transient)内の属性を含むファクトリのすべての属性を保持
    #   #   create_listの第2引数は、作成する関連をもったレコードの数を指定する
    #   after(:create) do |relation_cake, evaluator|
    #     FactoryGirl.create(:engineer, evaluator.trans_engineers_id, relarion_cake: relation_cake)
    #     FactoryGirl.create(:cake, evaluator.trans_cake_id, relarion_cake: relation_cake)
    #   end
  end
end

# FactoryGirl.define do
#   factory :relation_matome_hash_tag do

#     transient do
#       trans_matome_id { generate :number_6 }
#       trans_matome_hash_tag_id { generate :number_6 }
#     end

#     after(:build) do |relation_matome_hash_tag, evaluator|
#       matome                                   = FactoryGirl.build(:matome,
#                                                                   :with_user,
#                                                                   id:                       evaluator.trans_matome_id,
#                                                                   trans_matome_hash_tag_id: evaluator.trans_matome_hash_tag_id)
#       relation_matome_hash_tag.matome          = matome
#       relation_matome_hash_tag.matome_hash_tag = matome.matome_hash_tags[0]
#     end
#   end
# end

