class Practical::Scraper
require 'nokogiri'
require 'open-uri'
site = "https://www.imdb.com/list/ls074044963/"

page = Nokogiri::HTML(open(site))

def self.scrape_imdb
  page = Nokogiri::HTML(open("https://www.imdb.com/list/ls074044963/"))
    movies = page.css(".lister-list .lister-item")
    movies.each do |movie|
    title = movie.css(".lister-item-header a").text.strip
    info = movie.css("p").text.strip
    movie = Practical::Movies.new(title, info)
  end
end 

def self.get_movies
  movies = []
  movies << self.scrape_imdb
  movies 
end





end

