class CreateRelationBlogs < ActiveRecord::Migration
  def change
    create_table :relation_blogs do |t|
      t.integer :category_id, index: true, null: false
      t.integer :blog_id, index: true, null: false

      t.timestamps null: false
    end
    add_foreign_key :relation_blogs, :categories, on_delete: :cascade, on_update: :cascade
    add_foreign_key :relation_blogs, :blogs, on_delete: :cascade, on_update: :cascade
  end
end