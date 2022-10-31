require "rails_helper"

RSpec.describe BandsController, type: :request do
  describe '#index' do
    it "shows all bands" do
      get "/bands"
      bands = JSON.parse(response.body)
      expect(bands.size).to be >= 4
      expect(bands[0]["name"]).to eq "The Beatles"
    end
  end

  describe '#show' do
    it "shows a band correctly" do
      get "/bands/beatles"
      json_response = JSON.parse(response.body).deep_symbolize_keys
      expect(json_response).to eq({ name: "The Beatles", genre: 'Rock', slug: 'beatles' })
    end

    it "shows null when not found" do
      # TODO - this should be a 404, and return your useful error message
    end
  end

  describe '#create' do
    it "creates a band" do
      post "/bands", params: { name: "The Who", genre: 'Rock', slug: 'the-who' }
      # TODO - check the response, and also check Band.all to make sure it saved!
    end
  end

  describe '#update_genre' do
    # TODO - you're on your own here!
  end
end
