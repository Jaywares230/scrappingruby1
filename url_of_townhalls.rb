


require 'rubygems'
require 'nokogiri'   
require 'open-uri'

PAGE_URL = "http://annuaire-des-mairies.com/val-d-oise.html"

def get_all_the_urls_of_val_doise_townhalls


page = Nokogiri::HTML(open(PAGE_URL))
news_links = page.xpath("//p/a")
news_links.each{|link| puts "http://annuaire-des-mairies.com" + link['href']}


end

get_all_the_urls_of_val_doise_townhalls
