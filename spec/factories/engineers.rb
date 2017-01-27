FactoryGirl.define do
  factory :engineer do
    name "MyString"
    sequence(:number) { |n| n }
    section "MyString"
  end
end
