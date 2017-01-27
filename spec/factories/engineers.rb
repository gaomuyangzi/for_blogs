FactoryGirl.define do
  factory :engineer do
    name "MyString"
    #連番はこの書き方だと、1から始まる
    sequence(:number) { |n| n }
    section "MyString"
  end
end
