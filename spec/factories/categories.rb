# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category do
    name "MyString"
    
     after(:create) do |relation_blog|
      create(:relation_blog,
             category_id: create(:category) ,
             blog_id: create(:blog))
    end
  end
end
