require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    index_page = []
    doc = Nokogiri::HTML(open(index_url))
    doc.css(".student-card").each do |student|
      self.scrape_profile_page(student.css(".href"))
    end
  end

  def self.scrape_profile_page(profile_url)
    binding.pry
  end

end
