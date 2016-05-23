class Catalogue < ActiveRecord::Base
  has_many :catalogue_entries
  has_many :sites, through: :catalogue_entries
end
