class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.reduce(Hash.new(0)) do |genre_result, tally|
            genre_result[tally] += 1
            genre_result
          end
    end

    def self.artist_count
        @@artists.reduce(Hash.new(0)) do |artist_result, tally|
            artist_result[tally] += 1
            artist_result
          end
    end

end

