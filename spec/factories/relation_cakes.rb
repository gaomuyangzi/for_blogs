# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :relation_cake do
      sequence(:engineer_id) {Faker::Number.number(4)}
      sequence(:cake_id) {Faker::Number.number(4)}
      
      #一時的な属性
      ignore do
        is_chocolated "チョコレートがかかってる！"
        is_sugger "砂糖がかかってる！"
      end
      
      after(:build) do |relation_cake|
        relation_cake.engineer = FactoryGirl.build(:engineer, id: relation_cake.engineer_id)
        relation_cake.cake = FactoryGirl.build(:cake, id: relation_cake.cake_id)
        # puts hogehoge.is_chocolated
        # puts hogehoge.is_sugger
        
        #   Rails.logger.debug("hogehoge.is_chocolateの中身 is #{hogehoge.is_chocolated}")
        
        # Rails.logger.debug("hogehoge.is_chocolateの中身 inspect is #{hogehoge.inspect}")
        # Rails.logger.debug("relation_cakeの中身 inspect  is #{relation_cake.inspect}")
        
        
        # Rails.logger.debug("hogehogeの中身 is #{hogehoge}")
        # Rails.logger.debug("hogehogeの中身 inspect  is #{hogehoge.inspect}")
        
        # Rails.logger.debug("relation_cakeの中身 is #{relation_cake}")
        # Rails.logger.debug("relation_cakeの中身 inspect  is #{relation.inspect}")
        end
 end
end
