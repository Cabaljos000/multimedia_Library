# app/services/spotify_searcher.rb
class SpotifyService
    require 'base64'
    require 'httparty'
  
    TOKEN_URL = "https://accounts.spotify.com/api/token"
  
    def self.token
      Rails.cache.fetch("spotify_token", expires_in: 55.minutes) do
        auth = Base64.strict_encode64("#{ENV['SPOTIFY_CLIENT_ID']}:#{ENV['SPOTIFY_CLIENT_SECRET']}")
        response = HTTParty.post(TOKEN_URL,
          body: { grant_type: "client_credentials" },
          headers: {
            "Authorization" => "Basic #{auth}",
            "Content-Type" => "application/x-www-form-urlencoded"
          })
        response.parsed_response["access_token"]
      end
    end
  
    def self.search_track(query)
      response = HTTParty.get("https://api.spotify.com/v1/search",
        headers: { "Authorization" => "Bearer #{token}" },
        query: { q: query, type: "track", limit: 1 }
      )
      response.parsed_response["tracks"]["items"].first
    end
    
    def self.get_artist(artist_id)
      token = self.token
      url = "https://api.spotify.com/v1/artists/#{artist_id}"
    
      response = HTTParty.get(url, headers: {
        "Authorization" => "Bearer #{token}"
      })
    
      response.parsed_response
    end
    
  end
  