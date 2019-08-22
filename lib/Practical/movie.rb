class Practical::Movie
  attr_accessor :name, :info 
  
  def self.list 
    self.scrape_movies 
  end 
  
  def self.scrape_movies
    movies = []
    name = []
    info = []
    movies << self.scrape_screenrant
    name << self.scrape_screenrant
    info << self.scrape_screenrant
  end 
  
  def self.scrape_screenrant
    doc = Nokogiri::HTML(open("https://www.imdb.com/list/ls074044963/"))
    name = doc.search("h3").text
    info = doc.search("p class").text
  end
end 
    