json.extract! movie, :id, :title, :director, :year, :created_at, :updated_at
json.url movie_url(movie, format: :json)
