json.array!(@items) do |item|
  json.extract! item, :id, :category_id, :description, :date
  json.url item_url(item, format: :json)
end
