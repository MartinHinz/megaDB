json.array!(@external_collections) do |external_collection|
  json.extract! external_collection, :id, :name, :url, :description
  json.url external_collection_url(external_collection, format: :json)
end
