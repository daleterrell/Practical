class Practical::Movies
  attr_accessor :title, :info 
  require 'nokogiri'
  require 'open-uri'
  site = "https://www.imdb.com/list/ls074044963/"

  def initialize (title, info) 
    @title = title
    @info = info 
  end 


#enter a selector that you know you want to use in your scrape - i.e. div.main-content  or h1

#if the result is an empty array [], the content you want is probably being loaded with javascript


#.text works on an array
#['href'] does NOT work on an array 


#if it's a really long result and you can't tell if the content you want is in there, try chaining .text to the end.
  #for example: 
    #page.css("div.main-content").text  OR  #page.css("div.main-content")[0].text
end