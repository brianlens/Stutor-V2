json.array!(@klasses) do |klass|
  json.extract! klass, :id, :name, :description, :appointment, :duration, :user_id
  json.url klass_url(klass, format: :json)
end
