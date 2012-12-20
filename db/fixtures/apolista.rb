desc "Import All Pharmacies"
 
task :import_all do
  require 'nokogiri'
  require 'net/http'
  require 'open-uri'
  require 'csv'
  require 'pry'
  require 'pry-remote'
  require 'pry-nav'
 
  class Pharmacy
    attr_accessor :name, :owner_name, :address, :city, :zipcode, :tel, :fax, :website_url
  end
 
  def get_by_css link, css_path
    doc = Nokogiri::HTML(open(link))
    doc.css(css_path)
  end
 
  def get_city city_link
    page_links = Array.new()
    page_links += get_by_css(city_link, "div.apotheke a.name")
    i=1
    #TODO: remove the next comment tags to crawl all the website
    #TODO: but you would be blocked if you try to crawl the entire website many times, I tried it and I was blocked
    while head("#{city_link}-#{i}/") do
      page_links += get_by_css("#{city_link}-#{i}", "div.apotheke a.name")
    	i+= 1
    end
    page_links
  end
 
  def get_pharmacy link, city
    #TODO: you can uncomment the next line to inspect the object values and enjoy the elegant REPL provided by pry
    #binding.pry
    puts "scraping #{link}"
    details= get_by_css link, "div#stammdatenLayer"
    object = Pharmacy.new
    object.name = details.css("h2").text if details.css("h2").length > 0
    if details.css("address").length > 0
      parts= details.css("address").text.split("\n")
      object.owner_name = parts[1].strip if parts.length > 2
      object.address = parts[2].strip if parts.length > 3
      object.city = city
      object.zipcode= /^\d+/.match(part[3])[0] if parts.length > 4 and /^\d+/.match(part[3])
    end
    object.tel= details.css("#kontaktDetails span:contains('Tel')").text.gsub(/[^\d\/]/, "") if details.css("#kontaktDetails span:contains('Tel')").length > 0
    object.fax= details.css("#kontaktDetails span:contains('Fax')").text.gsub(/[^\d\/]/, "") if details.css("#kontaktDetails span:contains('Fax')").length > 0
    object.website_url = details.css("#urls a").first["href"] if details.css("#urls a").length > 0
    object
  end
 
  def head link
    uri = URI(link)
    Net::HTTP.start(uri.host) do |http|
      %w[200, 302].include? http.head(uri.path).code
    end
  end
 
  base_url = "http://www.apolista.de"
  all_links, all_pharmacies = Array.new, Array.new
 
  cities_list = get_by_css(base_url, "ul.stadtuebersicht a")
 
#TODO: change the following line from cities_list[0..0] to cities_list,
#TODO: I've just wanted to test it quickly
  cities_list.each do |e|
    city_link= base_url + e["href"]
    all_links+= get_city(city_link).map { |f| {:city => f.text, :href => f["href"]} }
  end
 
  all_links.each do |e|
    all_pharmacies << get_pharmacy("#{base_url}#{e[:href]}", e[:city])
  end
  CSV::dump(all_pharmacies, File.open(File.join(File.dirname(__FILE__), "output.csv"), "w"))
end