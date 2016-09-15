json.extract! brasseries, :id, :nom, :desc, :created_at, :updated_at
json.url brasseries_url(brasseries, format: :json)