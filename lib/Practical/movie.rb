
class Movie
  attr_accessor :name, :info 
  @@all = []
  
  def initialize
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.scrape_movies
    movies = []
    movies << self.scrape_movies
  end
  
  def self.new_from_pophorror(url)
    movie = Movie.new
  end
 
 # def self.create_movie
 #   movie_array = Practical::Scraper.name
 #   movie_array.collect do |movie_hash|
 #     self.new(movie_hash)
 #   end
 # end
  
   def self.name
    movie = Practical::Scraper.name
  end
end