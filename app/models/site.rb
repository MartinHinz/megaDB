class Site < ActiveRecord::Base
  belongs_to :mega_type
  belongs_to :source
  has_many :catalogue_entries
  has_many :catalogues, through: :catalogue_entries
  has_many :external_collection_entries
  has_many :external_collection, through: :external_collection_entries

  accepts_nested_attributes_for :external_collection_entries, reject_if: :all_blank, allow_destroy: true

  def self.available_scopes
    ["no_location", "no_name"]
  end
  scope :no_location, -> {where(lat: nil, lng: nil)}
  scope :no_name, -> {where("name ='' OR name IS NULL")}
end
