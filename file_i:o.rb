require 'rubygems'
require 'rest-client'

wiki_url = "http://en.wikipedia.org/"
wiki_local_file_name = "wiki_sample.html"

File.open(wiki_local_file_name, "w") { |file| file.write(RestClient.get(wiki_url)) }

# contents = File.open("wiki_sample.html", "r") { |file| file.read}


hamlet_url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
hamlet_local = "hamlet.txt" 

File.open(hamlet_local, "w") { |file| file.write(RestClient.get(hamlet_url))}

contents_2 = File.open("hamlet.txt", "r") { |file| file.read}

puts contents_2