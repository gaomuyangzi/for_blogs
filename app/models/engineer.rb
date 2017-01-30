class Engineer < ActiveRecord::Base
  has_many :relation_cakes
  has_many :cakes, through: :relation_cakes
  
  scope :search_the_most_cakes_ate, -> do
    joins(<<~SQL
        INNER JOIN `relation_cakes` ON `engineers`.`id` = `relation_cakes`.`engineer_id`
        INNER JOIN `cakes` ON `relation_cakes`.`cake_id` = `cakes`.`id`
    SQL
    ).group('`engineers`.`section`')
    .average('`cake`.`price`')
    .select('`engineers`.`section`')
  end
end
