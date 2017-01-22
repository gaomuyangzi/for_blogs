# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :blog do
    title "MyString"
    word "MyText"
    writer "MyText"
    
    # after(:build) do |matome, evaluator|
    #   matome.instagram_media << FactoryGirl.build(:instagram_medium, :with_instagram_user)

    #   matome.matome_hash_tags << FactoryGirl.build(:matome_hash_tag, id: evaluator.trans_matome_hash_tag_id)
    # end
  end
end
