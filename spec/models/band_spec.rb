require 'spec_helper'

RSpec.describe Band do
  describe '#all' do
    it 'returns the 4 initial bands' do
      expect(Band.all.size).to eq(4)
    end
  end

  describe '#find_by_param' do
    it 'returns the band with the given param' do
      expect(Band.find_by_param('the-beatles')).to be_present
    end

    it 'returns nil when not found' do
      expect(Band.find_by_param('zzz')).to be_nil
    end
  end

  describe '#create' do
    it 'creates a new band' do
      expect {
        Band.create(name: 'Stevie Wonder', genre: 'R&B')
      }.to change { Band.all.size }.by(1)
    end
  end
end
