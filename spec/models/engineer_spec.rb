require 'rails_helper'
RSpec.describe Engineer, :type => :model do
  describe '#search_the_most_cakes_ate' do
      context '正常系' do
          it 'エンジニアのセクションでグルーピングできる' do
            #  # setup
            #  engineer = FactoryGirl.create(:engineer)
             
            #  p engineer
            #  p engineer.cakes
            #  p engineer.relation_cakes
             
            #  cakes_model = FactoryGirl.create_list(:cake,10)
             
            relation_cake = FactoryGirl.create(:relation_cake)
            p relation_cake
            p relation_cake.engineer
            p relation_cake.cake
            
            
             # verify
            #  actual = Blog.find_by(title: blogs_model.title)
            #  expect(actual).not_to be nil
          end
      end
    end
end
