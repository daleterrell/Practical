class Practical::CLI
require 'nokogiri'
require 'open-uri'

  
  def call 
    Practical::Scraper.new.get_movies
    list_movies
    menu
    goodbye
  end
  
  def movies
    @movies = Practical::Movies 
  end
  
  def list_movies
    puts "#{movies}"
    @movies = Practical::Movies
#    @movies.each.with_index(1) do |movies, i|
    puts "#{i}, #{movie.title}"
  end
  
  def menu
    input = nil 
    while input != "exit"
      puts "What number movie would you like more information about?"
      input = gets.strip.downcase
      if input.to_i > 0
        movies = @movies[input.to_i-1]
        puts "#{movies.title} #{movies.info}"
      elsif input == "list"
        list_movies
      else
      movies = Practical::Scraper
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
end
