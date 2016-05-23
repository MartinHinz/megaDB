json.array!(@catalogue_entries) do |catalogue_entry|
  json.extract! catalogue_entry, :id, :catalogue_id, :site_id, :nr, :page
  json.url catalogue_entry_url(catalogue_entry, format: :json)
end
