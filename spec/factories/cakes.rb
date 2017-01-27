# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cake do
    name "MyString"
    sequence(:price) { |n| n }
  end
end
