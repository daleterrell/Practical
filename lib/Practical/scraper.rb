class Practical::Scraper
require 'nokogiri'
require 'open-uri'
site = "https://www.imdb.com/list/ls074044963/"

page = Nokogiri::HTML(open(site))

def get_movies
  page = Nokogiri::HTML(open("https://www.imdb.com/list/ls074044963/"))
  movies = page.css(".lister-list .lister-item")
  movies.each do |movie|
    title = movie.css("div.title").text.strip
    puts title
    info = movie.css("p").text.strip
    puts info
  end
end 



end

