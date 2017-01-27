FactoryGirl.define do
  factory :engineer do
    name "MyString"
    #連番はこの書き方だと、1から始まる
    sequence(:number) { |n| n }
    sequence(:section){ ["ねこ部","いぬ部","はむすたー部","くま部"].sample }
  end
end
