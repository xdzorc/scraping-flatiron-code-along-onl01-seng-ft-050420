require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper
  url ="http://learn-co-curriculum.github.io/site-for-scraping/courses"
  def get_page 
    doc =Nokogiri::HTML(open(url))
    
    binding.pry
    
  end
  
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  
end


Scraper.new.get_page



