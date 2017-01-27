class RelationCake < ActiveRecord::Base
  belongs_to :cake
  belongs_to :engineer
end
