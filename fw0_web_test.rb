require 'selenium-webdriver'

puts "(TC-001) Searching on Google"

  browser = Selenium::WebDriver.for(:firefox)
  browser.navigate.to("http://www.google.com")
  
      puts "Waiting for page load"
      sleep 2
  
  
  browser.find_element(:name, "q").send_keys("mark crowther software testing")
  browser.find_element(:name, "btnG").click
  
  puts "Waiting for search to load"
  sleep 2
  
  browser.find_element(:partial_link_text, "Profile of Mark Crowther").click

      puts "Found the PARTIAL link"
      sleep 2

  browser.navigate.back
    browser.find_element(:link_text, "Cyreath.co.uk - Profile of Mark Crowther").click

  puts "Found FULL link"
  sleep 2

 # ---------------------  Sanity check of main links

  $siteBaseUrl = "http://www.cyreath.co.uk/"
  siteUrlList = ["index.html","papers.html","template.html","books.html", "links.html", "profile.html"]
  
    siteUrlList.each do |page|
      browser.navigate.to("#{$siteBaseUrl}#{page}")
      sleep 1
    end
    
  puts "Sanity check of top navigation - OK"
  sleep 2   
    
  browser.navigate.to("#{$siteBaseUrl}#{siteUrlList[1]}")  
  
 # ---------------------  Sanity check of a set of links

  a = 0
  totalNoOfPages = 5
  
  while a < totalNoOfPages
    browser.find_elements(:link_text => "Read the paper")[a].click
    puts "a = #{a}"
      a += 1
      sleep 1
    browser.navigate.back
  end

# ---------------------  Sanity check of a set of links

#browser.quit
