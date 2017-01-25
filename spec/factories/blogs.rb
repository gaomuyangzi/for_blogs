# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :blog do
    title "MyString"
    word "MyText"
    writer "MyText"
    
    after(:create) do |relation_blog|
      create(:relation_blog,
             category_id: create(:category) ,
             blog_id: create(:blog))
    end

  end
end
