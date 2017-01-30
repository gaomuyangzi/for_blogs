require 'rails_helper'


#一旦放置
RSpec.describe Engineer, :type => :model do
  describe '#search_the_most_cakes_ate' do
      context '正常系' do
          it 'エンジニアのセクションでグルーピングできる' do
             # setup
             engineers_model = FactoryGirl.create_list(:engineer,10)
            #  cakes_model = FactoryGirl.create_list(:cake,10)
            relation_cakes = FactoryGirl.create_list(:relation_cake,10)
            
            
            
            
            
            
#             matome_hash_tags =
# +          [true, false].map.with_index do |flg, idx|
# +
# +            # relation_matome_hash_tagsの作成
# +            relation_matome_hash_tag = FactoryGirl.create(:relation_matome_hash_tag)
# +
# +            # matome_hash_tagsの更新
# +            matome_hash_tag          = relation_matome_hash_tag.matome_hash_tag
# +            matome_hash_tag.update!(name: hash_tags[idx])
# +
# +            # matomeの更新
# +            matome = relation_matome_hash_tag.matome
# +            matome.update!(is_illegal: flg)
# +
# +            matome_hash_tag
# +          end
            
            
            
             # verify
            #  actual = Blog.find_by(title: blogs_model.title)
            #  expect(actual).not_to be nil
          end
      end
    end
end
