json.extract! music, :id, :title, :artist, :year, :created_at, :updated_at
json.url music_url(music, format: :json)
