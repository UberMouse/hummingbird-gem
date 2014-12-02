require 'models/anime'
require 'httparty'
require 'models/representations/anime'
require 'pry'

class Hummingbird
  include HTTParty
  base_uri 'hummingbird.me/api/v1'

  def search(title)
    results = self.class.get('/search/anime', query: { query: title })

    # TODO figure out how to get rid of to_json call. Required because HTTParty automatically parses JSON
    results.map {|r| Representations::Anime.new(Anime.new).from_json r.to_json}
  end
end
