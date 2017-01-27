require 'rails_helper'
RSpec.describe EngineersController, :type => :controller do
    describe '#create' do
      context '正常系' do
          it '新しいモデルが生成される' do
             # setup
             engineers_model = FactoryGirl.create(:engineer)
             p engineers_model
             
             cakes_model = FactoryGirl.create_list(:cake,5)
             p cakes_model
             
             
             
             
             # exercise
            #  post :create
  
             # verify
            #  actual = Blog.find_by(title: blogs_model.title)
            #  expect(actual).not_to be nil
          end
      end
    end
end
        
    
