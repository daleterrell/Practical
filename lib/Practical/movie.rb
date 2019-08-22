require 'nokogiri'
require 'open-uri'
site = "https://www.imdb.com/list/ls074044963/"

page = Nokogiri::HTML(open(site))

movies = page.css("div.lister-list .lister-item") 

puts movies.count

# things.each do |thing|
#   title = thing.css("div.title").text.strip
#   puts title
# end

 #enter a selector that you know you want to use in your scrape - i.e. div.main-content  or h1.title 

#if the result is an empty array [], the content you want is probably being loaded with javascript


#.text works on an array
#['href'] does NOT work on an array 


#if it's a really long result and you can't tell if the content you want is in there, try chaining .text to the end.
  #for example: 
    #page.css("div.main-content").text  OR  #page.css("div.main-content")[0].text
