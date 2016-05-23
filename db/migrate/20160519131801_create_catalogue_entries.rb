class CreateCatalogueEntries < ActiveRecord::Migration
  def change
    create_table :catalogue_entries do |t|
      t.references :catalogue, index: true, foreign_key: true
      t.references :site, index: true, foreign_key: true
      t.integer :nr
      t.integer :page

      t.timestamps null: false
    end
  end
end
