require 'spec_helper'

RSpec.describe Band do
  describe '#all' do
    it 'returns the 4 initial bands' do
      expect(Band.all.size).to be >= (4)
    end
  end

  describe '#find_by_slug' do
    it 'returns the band with the given slug' do
      expect(Band.find_by_slug('beatles')).to be_present
    end

    it 'returns nil when not found' do
      expect(Band.find_by_slug('zzz')).to be_nil
    end
  end

  describe '#create' do
    it 'creates a new band' do
      expect {
        Band.create('Hiatus Kaiyote', 'Neosoul', 'hiatus-kaiyote')
      }.to change { Band.all.size }.by(1)
    end

    it 'appends the band to the end of the list' do
      band = Band.create('Hiatus Kaiyote', 'Neosoul', 'hiatus-kaiyote')
      expect(Band.all.last.name).to eq 'Hiatus Kaiyote'
    end
  end

  describe 'update_genre_by_slug' do
    it 'updates the genre of the band with the given slug' do
      Band.update_genre_by_slug('beatles', 'Psychedelic Rock')
      expect(Band.find_by_slug('beatles').genre).to eq 'Psychedelic Rock'
    end
  end

  describe 'the .albums method' do
    let(:band) do
      Band.new('The Beatles', 'beatles', 'Rock')
    end

    it 'returns an array of albums' do
      albums = band.albums
      expect(albums).to be_an(Array)
      expect(albums).to include 'I Saw Her Standing There'
      expect(albums).to include '1'
    end

    describe 'when given a min_year' do
      it 'excludes early albums' do
        albums = band.albums(2005)
        expect(albums).not_to include '1'
      end
    end

    describe 'when given a max_year' do
      it 'excludes late albums' do
        albums = band.albums(nil, 2005)
        expect(albums).not_to include 'I Saw Her Standing There'
      end
    end
  end
end
