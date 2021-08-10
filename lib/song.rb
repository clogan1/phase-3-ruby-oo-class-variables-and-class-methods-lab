require 'pry'

class Song

    @@count = 0
    @@genres = []
    @@artists = []

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        @@artists.tally
    end

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres.push(genre)
        @@artists.push(artist)
    end

    attr_accessor :name, :artist, :genre
end