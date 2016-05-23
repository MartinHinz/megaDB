json.array!(@catalogues) do |catalogue|
  json.extract! catalogue, :id, :name, :citation
  json.url catalogue_url(catalogue, format: :json)
end
