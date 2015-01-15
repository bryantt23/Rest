# https://github.com/zkay/PersonalProjects/blob/master/Rest/rest.rb

require 'rest-client'

puts "What are we doing? Options are: Search or Heroku. Search will search google, Heroku will ping your heroku app to keep it alive (if it's on the 1 dyno plan)"

input = gets.chomp.downcase

case input
  when "search"
    puts "What do you want to search for?"
    search = gets.chomp
    
#     looks like this gets the google page, searches by appending search term to url? 
    result = RestClient.get 'http://www.google.com/#q=' << "#{search}"
    
#     to string
    puts result.to_s
    puts "This is the source of your search result page converted entirely to strings."
    
  when "heroku"
    puts "Whats the name of your app? Just the part before .herokuapp.com"
    name = gets.chomp.downcase
    
#     does same thing as google above, but prepends instead
    result = RestClient.get '.herokuapp.com'.prepend("#{name}")
    puts result.to_s
    puts "This is your app's landing page, in source, all strings"
end