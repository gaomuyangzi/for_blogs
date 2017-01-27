class CreateEngineers < ActiveRecord::Migration
  def change
    create_table :engineers do |t|
      t.string :name
      t.string :number
      t.string :section

      t.timestamps null: false
    end
    add_index :engineers, :number, unique: true
  end
end
