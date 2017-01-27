class Engineer < ActiveRecord::Base
  has_many :relation_cakes
  has_many :cakes, through: :relation_cakes
end
