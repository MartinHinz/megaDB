json.array!(@external_collection_entries) do |external_collection_entry|
  json.extract! external_collection_entry, :id, :external_collection_id, :site_id, :there_id, :url
  json.url external_collection_entry_url(external_collection_entry, format: :json)
end
