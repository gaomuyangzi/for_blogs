class Category < ActiveRecord::Base
  has_many :relation_blogs
  has_many :blogs, through: :relation_blogs
end
