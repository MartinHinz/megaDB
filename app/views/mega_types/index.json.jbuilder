json.array!(@mega_types) do |mega_type|
  json.extract! mega_type, :id, :name
  json.url mega_type_url(mega_type, format: :json)
end
