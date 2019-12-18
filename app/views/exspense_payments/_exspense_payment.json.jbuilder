json.extract! exspense_payment, :id, :user_id, :paid_amount, :created_at, :updated_at
json.url exspense_payment_url(exspense_payment, format: :json)
