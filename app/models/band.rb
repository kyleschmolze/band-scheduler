class Band
  attr_accessor :name, :genre, :slug

  def initialize(name, genre, slug)
    @name = name
    @genre = genre
    @slug = slug
  end

  @@bands = [
    Band.new('The Beatles', 'Rock', 'beatles'),
    Band.new('Stevie Wonder', 'R&B', 'stevie'),
    Band.new('Michael Jackson', 'Pop', 'mj'),
    Band.new('The Bee Gees', 'Disco', 'bee-gees'),
  ]

  def self.all
    @@bands
  end

  def self.find_by_slug(slug)
    # TODO - return the band with the given slug
  end

  # TODO write a band.generate_slug Instance Method which can be called on any
  # band instance, and which overrides it's self.slug to a URL-friendly version
  # of its name (all lowercase, replace any spaces with '-')

  # TODO write a self.create Class Method which takes a name, genre, and slug,
  # creates a new Band instance, adds it to the @@bands array,
  # and then returns the new Band instance
  # Optional: modify your self.create method to only accept name and genre,
  # and call your band.generate_slug method on the band before appending it to the array
  # or returning it. That way, you always set the URL slugs for your application, not
  # external users.

  # TODO write a self.update_genre_by_slug Class Method which takes 2 arguments:
  # a slug and a new_genre.
  # It should find the band with the given slug,
  # update the genre to the new string,
  # and then return the band.
  # If no band is found by that slug, return nil

  # TODO Use an API!
  # write an Instance Method called .albums
  # It should return an array of album names as returned by TheAudioDB API:
  # https://www.theaudiodb.com/api_guide.php
  # Add this line to your Gemfile
  # gem 'httparty'
  # Then run this command:
  # bundle install
  # Now HTTParty is available to use in your code: https://github.com/jnunemaker/httparty
  # Want more challenges? Try the bonus questions from yesterday's README here:
  # https://github.com/kyleschmolze/bands
end
