# https://github.com/Jberczel/odin-projects/blob/master/rest_client/search.rb

# i guess downloading the gem then requiring it is how it works
require 'rest_client'

print "GOOGLE SEARCH: "
input = gets.chomp

# using the get method which is used extensively for websites
response = RestClient.get 'https://www.google.com/#q=' + input

puts response