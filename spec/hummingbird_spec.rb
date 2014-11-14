require 'spec_helper'

describe Hummingbird do
  let(:hummingbird) {Hummingbird.new}

  describe "#search" do
    use_vcr_cassette
    
    let(:expected_results) {
      [Anime.new()]
    }

    it 'can retrieve search results from hummingbird' do
      results = hummingbird.search('Log Horizon')

      expect(results).to eq(expected_results)
    end 
  end
end
