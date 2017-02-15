json.extract! user, :id, :first_name, :string, :last_name, :email, :phone, :role, :is_care_deacon, :active, :created_at, :updated_at
json.url user_url(user, format: :json)