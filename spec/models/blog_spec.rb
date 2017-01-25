require 'rails_helper'
RSpec.describe Blog, :type => :model do

  describe "#hogehoge" do
    context "BlogのFactoryを作成した場合" do
        it "テストデータが作成される" do 
         blogs_model = FactoryGirl.create_list(:blog,10)
            blog_model = FactoryGirl.create(:blog, writer:'asopasomaso')
      
            p blog_model
            
            
        end
    end
  end
end

