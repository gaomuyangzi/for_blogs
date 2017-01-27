class Cake < ActiveRecord::Base
  has_many :relation_cakes
  has_many :engineers, through: :relation_cakes
end
