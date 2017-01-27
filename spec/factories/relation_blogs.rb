
FactoryGirl.define do
  factory :relation_blog do
    category_id 1
    blog_id 1
  end
end

# FactoryGirl.define do
#   factory :relation_blog do

#     transient do
#       trans_category_id { generate :number_6 }
#       trans_blog_id { generate :number_6 }
#     end

#     after(:build) do |relation_blog, evaluator|
#       relation_blog.category          = category
#       relation_blog.blog = blog
#     end
#   end
# end
