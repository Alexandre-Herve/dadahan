json.array!(@customers) do |customer|
  json.extract! customer, :is_private, :is_public, :is_individual, :name
  json.url customer_url(customer, format: :json)
end
