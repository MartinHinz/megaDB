class CreateCatalogues < ActiveRecord::Migration
  def change
    create_table :catalogues do |t|
      t.string :name
      t.text :citation

      t.timestamps null: false
    end
  end
end
