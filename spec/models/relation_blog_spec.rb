require 'rails_helper'

RSpec.describe RelationBlog, :type => :model do

  describe "#hogehoge" do
    context "BlogのFactoryを作成した場合" do
        it "テストデータが作成される" do 
            # blog_model = FactoryGirl.create(:blog)
      relation_blog_model = FactoryGirl.create(:relation_blog)
      
            p relation_blog_model
        end
    end
  end
end

