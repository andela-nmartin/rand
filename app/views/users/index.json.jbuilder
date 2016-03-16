json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :password, :employee_id
  json.url user_url(user, format: :json)
end
