# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :engineer do
    name "MyString"
    #社員番号は連番にする
    sequence(:number) {|n| n}
    section "MyString"
  end
end
