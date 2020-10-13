require_relative 'artist.rb'
require_relative 'song.rb'

class Genre

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def songs
        #return all songs with genre of self.name

        Song.all.select {|song| song.genre = self.name}

    end

    def artists
        #return all artist with genre of self.name

        songs.map {|song| song.artist}

    end


    def self.all
        @@all
    end

        
end