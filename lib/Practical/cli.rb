class Practical::CLI
require 'nokogiri'
require 'open-uri'

puts movies.count
  
  def call 
    list_movies
    menu
    goodbye
  end
  
  def list_movies
    puts #{movies}
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
      puts "#{movies[0]}"
    when "2"
      puts "#{movies[1]}"
    when "3"
      puts "#{movies[2]}"
    when "4"
      puts "#{movies[3]}"
    when "5"
      puts "#{movies[4]}"
    when "6"
      puts "#{movies[5]}"
    when "7"
      puts "#{movies[6]}"
    when "8"
      puts "#{movies[7]}"
    when "9"
      puts "#{movies[8]}"
    when "10"
      puts "#{movies[9]}"
    
    
   
    when "exit"
      puts "Thank you! I hope you enjoy any horror movie, and maybe it'll be a movie from this list!"
      exit
    end
  end
end
end
