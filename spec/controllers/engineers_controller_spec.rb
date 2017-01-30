require 'rails_helper'
RSpec.describe EngineersController, :type => :controller do
    describe '#create' do
      context '正常系' do
          it '新しいモデルが生成される' do
             # setup
            # engineers_model = FactoryGirl.create(:engineer)
             relation_cakes_model = FactoryGirl.create(:relation_cake)
             
            p relation_cakes_model
            # p engineers_model.cakes
            # p engineers_model.relation_cakes
            
             # verify
            #  actual = Blog.find_by(title: blogs_model.title)
            #  expect(actual).not_to be nil
          end
      end
    end
end