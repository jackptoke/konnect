json.extract! address, :id, :street_address, :suburb, :state, :postcode, :created_at, :updated_at
json.url address_url(address, format: :json)
