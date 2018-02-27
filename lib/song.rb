require 'pry'
class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0 
  @@genres = []
  @@artists = []
   
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
    uniq_artists = []
    uniq_artists = @@artists.uniq
  end
  
  def self.genres
    uniq_genres = []
    uniq_genres = @@genres.uniq
  end
  
  def self.genre_count
      genre_count = {} #hash key - genre, value - # songs in genre 
      if !genre_count.keys.include?(@genre)
      genre_count[@genre] = []
    end
    binding.pry
    genre_count[@genre] << @name
  end
      
  end
end
  