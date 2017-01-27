class CreateCakes < ActiveRecord::Migration
  def change
    create_table :cakes do |t|
      t.string :name
      t.integer :price

      t.timestamps null: false
    end
  end
end
