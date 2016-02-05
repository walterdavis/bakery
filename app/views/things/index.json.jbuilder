json.array!(@things) do |thing|
  json.extract! thing, :id, :foo, :bar
  json.url thing_url(thing, format: :json)
end
