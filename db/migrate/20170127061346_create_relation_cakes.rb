class CreateRelationCakes < ActiveRecord::Migration
  def change
    create_table :relation_cakes do |t|
      t.integer :engineer_id, index: true, null: false
      t.integer :cake_id, index: true, null: false

      t.timestamps null: false
    end
    add_foreign_key :relation_cakes, :engineers, on_delete: :cascade, on_update: :cascade
    add_foreign_key :relation_cakes, :cakes, on_delete: :cascade, on_update: :cascade
  end
end
