class Band
  attr_accessor :name, :slug, :genre

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

  def albums(min_year = nil, max_year = nil)
    response = HTTParty.get("https://theaudiodb.com/api/v1/json/2/discography.php?s=#{name}")
    albums = response['album']
    albums.select!{ |album| album['intYearReleased'].to_i >= min_year } if min_year
    albums.select!{ |album| album['intYearReleased'].to_i <= max_year } if max_year
    albums.map { |album| album['strAlbum'] }
  end

  def self.all
    @@bands
  end

  def self.create(name, genre, slug)
    band = Band.new(name, genre, slug)
    @@bands << band
    band
  end

  def self.update_genre_by_slug(slug, new_genre)
    band = self.find_by_slug slug
    return nil unless band
    band[:genre] = new_genre
    band
  end

  def self.find_by_slug(slug)
    @@bands.find { |band| band.slug == slug }
  end
end
