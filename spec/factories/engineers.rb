FactoryGirl.define do
  factory :engineer do
    sequence(:name) {Faker::Name.name}
    #連番はこの書き方だと、1から始まる
    sequence(:number) { |n| n }
    # sequence(:section){ ["ねこ部","いぬ部","はむすたー部","くま部"].sample }
    section "Mytext"
  end
end
