class Practical::CLI
require 'nokogiri'
require 'open-uri'
require 'pry'

  
  def call 
    Practical::Scraper.get_movies
 #   binding.pry
    list_movies
    menu
    goodbye
  end
  
  def movies
    @movies = Practical::Movies 
  end
  
  def goodbye
    puts "Enjoy.  We don't need CGI for this!!"
  end
  
  def list_movies
    puts "#{movies}"
    @movies = Practical::Movies
    @movies.each.with_index(1) do |movies, i|
    puts "#{i}, #{movies}"
  end
  
  def menu
    # input = nil 
    # while input != "exit"
    #   puts "What number movie would you like more information about?"
    #   input = gets.strip.downcase
    #   if input.to_i > 0
    #     puts @movies[input.to_i-1]
    #   elsif input == "list"
    #     list_movies
     
    # puts "Would you like to see information on another movie? Enter Y or N"
    
  end
end
end

