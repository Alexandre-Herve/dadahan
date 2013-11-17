json.array!(@projects) do |project|
  json.extract! project, :date, :is_ancient, :is_modern, :address, :description, :program, :amount_in_euro, :surface_in_squared_meters
  json.url project_url(project, format: :json)
end
