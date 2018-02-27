require 'pry'
class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0 
  @@genres = []
  @@artist = []
   
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
    @@artist << artist
  end 
  
  def self.count 
    @@count
  end
  
  def self.artist
    @@artist
  end
  
  def self.genre
    if !@@genres.include?(@genre)
      @@genres << @genre
    end
  end
  
end
  