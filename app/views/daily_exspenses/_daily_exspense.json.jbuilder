json.extract! daily_exspense, :id, :description, :totalamount, :time, :creaded_by, :status, :created_at, :updated_at
json.url daily_exspense_url(daily_exspense, format: :json)
