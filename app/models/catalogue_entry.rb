class CatalogueEntry < ActiveRecord::Base
  belongs_to :catalogue
  belongs_to :site
end
