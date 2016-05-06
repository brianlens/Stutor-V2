json.array!(@topics) do |topic|
  json.extract! topic, :id, :title, :description, :subject_id, :user_id
  json.url topic_url(topic, format: :json)
end
