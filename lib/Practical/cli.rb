class Practical::CLI
require 'nokogiri'
require 'open-uri'

  def start
    greeting
    scrape_movies
    menu
  end
  
#  def call 
#    Practical::Scraper.get_movies
#    binding.pry
#    list_movies
#    menu
#    goodbye
#  end
  
  def greeting
    puts "Welcome to the world of practical effects in horror movies"
  end
  
  def scrape_movies
    Practical::Scraper.scrape_movies
  end
  
  def menu
    puts "If you want to list movies alphabetically, type 'abc'"
    puts "If you want to list movies by rating, type 'rating'"
    puts "If you want to exit, type 'exit'"

    input = gets.strip.downcase

    case input
    when 'abc'
      sort_movies_abc
      list_movies
      get_movie_method_in_loop_format
    when 'rating'
      sort_movies_rating
      list_movies
      get_movie_method_in_loop_format
    when 'exit'
    else
      puts "Sorry I didn't understand that!"
      menu
    end
  end
  
  def sort_movies_abc
    @sorted_movies = MovieReview::Movie.all.sort_by{|movie| movie.title}
  end

  def sort_movies_rating
    @sorted_movies = MovieReview::Movie.all.reverse
  end

  def goodbye
    puts "Enjoy.  We don't need CGI for this!!"
  end
 
  def list_movies
    puts "Here are the best 84 movies that use practical effects:"
    @sorted_movies.each.with_index(1) do |movie,index|
      puts "#{index}. #{movie.title}"    # if index <= 100
    end
  end
  
end
end


