require 'nokogiri'
require 'open-uri'

#get the HTML and assign it to a variable
doc = Nokogiri::HTML(open('http://www.marthastewart.com/312598/brick-pressed-sandwich'))

#display the variable to be able to copy and paste into a sep doc for easy searching
#puts doc

#Search the HTML for different types of elements until you find the right element for the list of ingredients
#search = doc.css('.components-list')
#puts search

#Scrap only the list
list = doc.css('.components-item')
puts list

#loop through the elements and puts the content that is each ingredient
list = doc.css('.components-item').inner_html
puts list

#Will .children work?
list = doc.css('.components-item').children
puts list

#Argubably, the output for .children is easier to read as it is separated by lines