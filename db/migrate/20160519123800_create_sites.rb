class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :toponym
      t.string :nuts_3
      t.string :nuts_2
      t.string :nuts_1
      t.text :description
      t.string :literature
      t.string :la_nr
      t.float :lat
      t.float :lng
      t.references :mega_type, index: true, foreign_key: true
      t.references :source, index: true, foreign_key: true
      t.text :comments

      t.timestamps null: false
    end
  end
end
