class ExternalCollectionEntry < ActiveRecord::Base
  belongs_to :external_collection
  belongs_to :site
end
