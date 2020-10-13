require_relative 'song.rb'
require_relative 'genre.rb'

class Artist

    attr_accessor :name 

    @@all = [] 

    def initialize(name)
        @name = name
        @@all << self
    end


    def new_song (title, genre)
        #make a new song
        Song.new(title, self, genre)
    end

    def songs
        #use select on songs, return all songs what belong to artist
        Song.all.select{|song| song.artist == self}
    end

    def genres
        #collect the genre of each song
        self.songs.map{|song| song.genre}
    end

    def self.all
        @@all
    end

end

