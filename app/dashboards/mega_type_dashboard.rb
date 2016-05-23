require "administrate/base_dashboard"

class MegaTypeDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    sites: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :sites,
    :id,
    :name,
    :created_at,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :sites,
    :id,
    :name,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :sites,
    :name,
  ].freeze

  # Overwrite this method to customize how mega types are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(mega_type)
  #   "MegaType ##{mega_type.id}"
  # end
  # Overwrite this method to customize how sites are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(mega_type)
    unless mega_type.name.blank?
      "#{mega_type.name}"
    else  
      "MegaType ##{mega_type.id}"
    end
  end
end

