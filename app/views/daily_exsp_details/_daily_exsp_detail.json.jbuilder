json.extract! daily_exsp_detail, :id, :user_id, :daily_exspenses_id, :amount, :is_paid, :created_at, :updated_at
json.url daily_exsp_detail_url(daily_exsp_detail, format: :json)
