# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category do
    name "MyString"
    
    transient do
　     trans_blog_id { generate :number_6 }
   end

  end
end
