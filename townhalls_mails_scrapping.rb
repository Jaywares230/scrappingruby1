
require 'rubygems'
require 'nokogiri'   
require 'open-uri'



def get_the_email_of_a_townhal_from_its_webpage(mail)

	page = Nokogiri::HTML(open(mail))

	puts page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text

end

def perform

	 get_the_email_of_a_townhal_from_its_webpage("http://annuaire-des-mairies.com/95/vaureal.html")

end 


perform


