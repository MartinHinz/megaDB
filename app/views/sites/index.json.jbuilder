json.array!(@sites) do |site|
  json.extract! site, :id, :name, :toponym, :nuts_3, :nuts_2, :nuts_1, :description, :literature, :la_nr, :lat, :lng, :mega_type_id, :source_id, :comments
  json.url site_url(site, format: :json)
end
