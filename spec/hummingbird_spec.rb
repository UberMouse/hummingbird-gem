require 'spec_helper'

describe Hummingbird do
  let(:hummingbird) {Hummingbird.new}

  describe "#search" do
    
    let(:expected_results) {
      [Anime.new(slug: 'log-horizon')]
    }

    it 'can retrieve search results from hummingbird', :vcr do
      results = hummingbird.search('Log Horizon')

      expect(results).to eq(expected_results)
    end 
  end
end
