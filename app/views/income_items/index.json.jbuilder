json.array!(@income_items) do |income_item|
  json.extract! income_item, :id, :income_category_id, :money, :date
  json.url income_item_url(income_item, format: :json)
end
