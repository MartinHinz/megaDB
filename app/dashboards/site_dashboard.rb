require "administrate/base_dashboard"

class SiteDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    mega_type: Field::BelongsTo,
    source: Field::BelongsTo,
    catalogue_entries: Field::HasMany,
    catalogues: Field::HasMany,
    external_collection_entries: Field::NestedHasMany.with_options(skip: :site),
    external_collection: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    toponym: Field::String,
    nuts_3: Field::String,
    nuts_2: Field::String,
    nuts_1: Field::String,
    description: Field::Text,
    literature: Field::String,
    la_nr: Field::String,
    lat: Field::Number.with_options(decimals: 2),
    lng: Field::Number.with_options(decimals: 2),
    comments: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :mega_type,
    :source,
    :catalogue_entries,
    :catalogues,
    :external_collection_entries,
    :external_collection,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :mega_type,
    :source,
    :catalogue_entries,
    :catalogues,
    :external_collection_entries,
    :external_collection,
    :id,
    :name,
    :toponym,
    :nuts_3,
    :nuts_2,
    :nuts_1,
    :description,
    :literature,
    :la_nr,
    :lat,
    :lng,
    :comments,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :mega_type,
    :source,
    :catalogue_entries,
    :catalogues,
    :external_collection_entries,
    :external_collection,
    :name,
    :toponym,
    :nuts_3,
    :nuts_2,
    :nuts_1,
    :description,
    :literature,
    :la_nr,
    :lat,
    :lng,
    :comments,
  ].freeze

  # Overwrite this method to customize how sites are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(site)
  #   "Site ##{site.id}"
  # end
  def display_resource(site)
    unless site.name.blank?
     "Site #{site.name}"    
    else  
     "Site ##{site.id}"
    end
  end
end
