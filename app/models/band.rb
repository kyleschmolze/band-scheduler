class Band
  @@bands = [
    { name: 'The Beatles', genre: 'Rock' },
    { name: 'The Rolling Stones', genre: 'Rock' },
    { name: 'The Who', genre: 'Rock' },
    { name: 'The Kinks', genre: 'Rock' },
  ]

  def self.all
    @@bands
  end

  def self.create(band)
    @@bands << band
    band
  end

  def self.find_by_param(name)
    all.find { |band| band[:name].downcase.gsub(' ', '-') == name }
  end
end
