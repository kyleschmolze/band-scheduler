require "rails_helper"

RSpec.describe BandsController, type: :request do
  it "shows all bands" do
    get "/bands"
    bands = JSON.parse(response.body)
    expect(bands.size).to eq 4
    expect(bands[0]["name"]).to eq "The Beatles"
  end

  it "shows a band correctly" do
    get "/bands/beatles"
    band = JSON.parse(response.body).deep_symbolize_keys
    expect(band).to eq({ name: "The Beatles", genre: 'Rock', slug: 'beatles' })
  end

  it "shows null when not found" do
    get "/bands/zzz"
    expect(response.code).to eq "404"
    json_response = JSON.parse(response.body).deep_symbolize_keys
    expect(json_response).to eq({ error: 'Not found' })
  end
end

