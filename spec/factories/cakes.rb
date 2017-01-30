# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cake do
    name "MyString"
    sequence(:price){ [*500..750].sample }
    
  
    
    # after(:build) do |cake|
    # cake.engineers << FactoryGirl.build(:engineer)
    
    # after_create do |job|
    # job.details << FactoryGirl.create(:detail)
    
  
  end
  end
