class CreateExternalCollectionEntries < ActiveRecord::Migration
  def change
    create_table :external_collection_entries do |t|
      t.references :external_collection, index: true, foreign_key: true
      t.references :site, index: true, foreign_key: true
      t.string :there_id
      t.string :url

      t.timestamps null: false
    end
  end
end
