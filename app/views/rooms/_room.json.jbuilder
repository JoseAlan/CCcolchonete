json.extract! room, :id, :title, :description, :created_at, :updated_at
json.url room_url(room, format: :json)
