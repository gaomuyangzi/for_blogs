require 'rails_helper'
RSpec.describe BlogsController, type: :controller do
    describe '#create' do
      context '正常系' do
          it '新しいモデルが生成される' do
             # setup
             blogs_model = FactoryGirl.create_list(:blog,5)
             # exercise
             post :create
  
             p blogs_model
             # verify
             actual = Blog.find_by(title: blogs_model.title)
             expect(actual).not_to be nil
          end
      end
    end
end
        
    
