require 'rubygems'
require 'open-uri'
require 'rest-client'


hamlet_url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
hamlet_local = "hamlet.txt" 

File.open(hamlet_local, "w") { |file| file.write(RestClient.get(hamlet_url))}

File.open(hamlet_local, "r") { |file| file.readlines.each_with_index {
  |line, index| puts line if index % 42 == 41 }}