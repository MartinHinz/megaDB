class ChangeNrFormatInCatalogEntry < ActiveRecord::Migration
  def up
    change_column :catalogue_entries, :nr, :string
  end

  def down
    change_column :catalogue_entries, :nr, :integer
  end
end
