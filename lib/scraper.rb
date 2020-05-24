require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper
 
  def get_page 
    url ="http://learn-co-curriculum.github.io/site-for-scraping/courses"
    doc =Nokogiri::HTML(open(url))
    # binding.pry
    doc.css(".post").each do |element|
      course =Course.new
      course.name =element.css("h2")
      course.
    end
    
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



