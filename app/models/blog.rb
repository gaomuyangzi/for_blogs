class Blog < ActiveRecord::Base
  has_many :relation_blogs
  has_many :categories, through: :relation_blogs
end
