class CreateExternalCollections < ActiveRecord::Migration
  def change
    create_table :external_collections do |t|
      t.string :name
      t.string :url
      t.text :description

      t.timestamps null: false
    end
  end
end
