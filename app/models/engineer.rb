class Engineer < ActiveRecord::Base
  has_many :relation_cakes
  has_many :cakes, through: :relation_cakes
  
  # def search_the_most_cakes_ate
  #   joins(<<~SQL
  #       INNER JOIN `relation_cakes` ON `engineers`.`id` = `relation_cakes`.`engineer_id`
  #       INNER JOIN `cakes` ON `relation_cakes`.`cake_id` = `cakes`.`id`
  #   SQL
  #   ).group('`engineers`.`section`')
  # end
end
