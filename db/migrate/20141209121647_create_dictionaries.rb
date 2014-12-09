class CreateDictionaries < ActiveRecord::Migration
  def change
    create_table :dictionaries do |t|
      t.string :name, null: false
      t.text :description
      t.integer :created_user_id, index: true, null:false

      t.timestamps
    end
  end
end
