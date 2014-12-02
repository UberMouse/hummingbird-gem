require 'spec_helper'

class AnimeFactory
  def self.make(slug:)
    anime = Anime.new

    anime.slug = slug

    anime
  end
end

describe Hummingbird do
  let(:hummingbird) {Hummingbird.new}

  describe "#search" do
    
    let(:expected_results) {
      [AnimeFactory.make(slug: 'log-horizon'),
       AnimeFactory.make(slug: 'log-horizon-recap'),
       AnimeFactory.make(slug: 'log-horizon-2')]
    }

    it 'can retrieve search results from hummingbird', :vcr do
      results = hummingbird.search('Log Horizon')

      expect(results).to eq(expected_results)
    end 
  end
end
