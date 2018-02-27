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
    uniq = []
    uniq = @@artists.uniq
  end
  
  def self.genre
    if !@@genres.include?(@genre)
      @@genres << @genre
    end
  end
  
end
  