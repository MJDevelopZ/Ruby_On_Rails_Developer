require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://skillcrush.com"))

puts doc.search('h1.entry-title')
puts doc.css('.entry-title')
puts doc.css('.entry-title').inner_html
puts doc.css('.entry-title').children
puts doc.css('.entry-title').children[0]

puts doc.methods