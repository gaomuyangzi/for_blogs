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