require "administrate/base_dashboard"

class ExternalCollectionEntryDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    external_collection: Field::BelongsTo,
    site: Field::BelongsTo,
    id: Field::Number,
    there_id: Field::String,
    url: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :external_collection,
    :site,
    :id,
    :there_id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :external_collection,
    :site,
    :id,
    :there_id,
    :url,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :external_collection,
    :site,
    :there_id,
    :url,
  ].freeze

  # Overwrite this method to customize how external collection entries are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(external_collection_entry)
  #   "ExternalCollectionEntry ##{external_collection_entry.id}"
  # end
end
