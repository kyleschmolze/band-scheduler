require 'spec_helper'

RSpec.describe Band do
  describe '#all' do
    it 'returns the 4 initial bands' do
      expect(Band.all.size).to be >= (4)
    end
  end

  describe '#find_by_slug' do
    it 'returns the band with the given slug' do
      # TODO - Make sure the Band.find_by_slug method returns a Band object
    end

    it 'returns nil when not found' do
      # TODO - make sure the Band.find_by_slug method returns nil
      # when given a band slug that doesnt exist
    end
  end

  # TODO - write a test for the Band#generate_slug method

  describe '#create' do
    it 'creates a new band' do
      expect {
        # the brakets around this line allow us to check a value
        # *before* and *after* the block is executed
        # TODO - put a working call to Band.create here
      }.to change {
        # TODO What should change by 1 when we call Band.create?
      }.by(1)
    end

    it 'appends the band to the end of the list' do
      # TODO - call Band.create here, and make sure the new band
      # is the last one in the Band.all array
    end
  end

  # TODO - write a test for the Band#update_genre_by_slug method

  # TODO - write a test for the band.albums method
end
