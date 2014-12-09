class CreateLocales < ActiveRecord::Migration
  def change
    create_table :locales do |t|
      t.string :lang_territory, null: false

      t.timestamps
    end
  end
end
