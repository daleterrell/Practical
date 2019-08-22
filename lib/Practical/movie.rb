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
    doc = Nokogiri::HTML(open("https://screenrant.com/horror-movies-used-practical-effects-no-cgi/"))
    name = doc.search("item-title.art-body-content.article-body.article.page_content.w-content.w-website").text
    info = doc.search("p item-title.art-body-content.article-body.article.page_content.w-content.w-website").text
  end
end 
    