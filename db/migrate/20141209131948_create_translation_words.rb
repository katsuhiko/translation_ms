class CreateTranslationWords < ActiveRecord::Migration
  def change
    create_table :translation_words do |t|
      t.integer :prev_id
      t.string :cud_type, null: false
      t.references :work, index: true, null: false
      t.references :locale, index: true, null: false
      t.text :content
      t.string :progress_status, null: false
      t.integer :created_user_id, index: true, null:false

      t.timestamps
    end
  end
end
