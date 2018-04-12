

require 'rubygems'
require 'nokogiri'   
require 'open-uri'






	 def incubateurs_list

pages = Nokogiri::HTML(open("http://www.alloweb.org/annuaire-startups/annuaire-incubateurs-startups/"))

news_links = pages.css("a.listing-row-image-link")
	
	news_links.each{|balise| 

 	url = balise['href']
 	

		

		page = Nokogiri::HTML(open(url))
		#titre de l'incubateur	
		 puts page.xpath("//div/h1").text
		#lien vers site web
		 puts page.xpath("/html/body/div[1]/div[3]/div/div/div[2]/div[1]/div/div/div/div[1]/div/div[1]/div/div/div/div/div/p[5]/a[1]").map { |link2| link2['href']}
		
		
		
		
}
 



end

incubateurs_list