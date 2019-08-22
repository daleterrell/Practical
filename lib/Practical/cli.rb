class Practical::CLI
require 'nokogiri'
require 'open-uri'
site = "https://www.imdb.com/list/ls074044963/"

page = Nokogiri::HTML(open(site))

movies = page.css("div.lister-list .lister-item") 

puts movies.count
  
  def call 
    list_movies
    menu
    goodbye
  end
  
  def list_movies
    puts "The 30 best horror movies made with practical effects!!"
  end
  
  def menu
    puts "What number movie would you like more information about?"
    input = gets.strip.downcase
    while input != 0
    input = gets.strip.downcase
      movie = Practical::scraper
      binding.pry
    puts ""
    puts "---------- Movies #{movie} - #{movie} ----------"
    puts ""
    puts ""
    puts "Would you like to see information on another movie? Enter Y or N"
    
    case 
    when "1"
      puts "#{movie[1]}"
    when "2"
      puts "#{movie[1]}"
    when "3"
      puts "#{movie[2]}"
    when "4"
      puts "#{movie[3]}"
    when "5"
      puts "#{movie[4]}"
    when "6"
      puts "#{movie[5]}"
    when "7"
      puts "#{movie[6]}"
    when "8"
      puts "#{movie[7]}"
    when "9"
      puts "#{movie[8]}"
    when "10"
      puts "#{movie[9]}"
    
    
   
    when "exit"
      puts "Thank you! I hope you enjoy any horror movie, and maybe it'll be a movie from this list!"
      exit
    end
  end
end
end
