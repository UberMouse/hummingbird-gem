require 'models/anime'
require 'httparty'
require 'models/representations/anime'

class Hummingbird
  include HTTParty
  base_uri 'hummingbird.me/api/v1'

  def search(title)
    results = self.class.get('/search/anime', query: { query: title })

    results.map {|r| Representations::Anime.new(Anime.new).from_json r}
  end
end
