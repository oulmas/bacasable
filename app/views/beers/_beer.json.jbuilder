json.extract! beer, :id, :name, :desc, :note, :created_at, :updated_at
json.url beer_url(beer, format: :json)