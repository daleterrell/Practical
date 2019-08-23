require 'nokogiri'
require 'open-uri'

html = open("https://www.imdb.com/list/ls074044963/")

Nokogiri::HTML(html)

doc = Nokogiri::HTML(html)
doc.css("<h3 class="lister-item-header").text.strip