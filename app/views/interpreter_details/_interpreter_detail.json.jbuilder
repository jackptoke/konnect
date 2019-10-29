json.extract! interpreter_detail, :id, :interpreter_id, :first_name, :last_name, :abn, :mobile_no, :sex, :payment_rate, :rating_score, :address_id, :created_at, :updated_at
json.url interpreter_detail_url(interpreter_detail, format: :json)
