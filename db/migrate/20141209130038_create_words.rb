class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.references :dictionary, index: true, null: false
      t.string :use_status, null: false
      t.integer :created_user_id, index: true, null:false

      t.timestamps
    end
  end
end
