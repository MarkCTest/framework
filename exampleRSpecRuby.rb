require 'selenium-webdriver'

 # ---------------    Set-up
  browser = Selenium::WebDriver.for(:firefox)  
 
  $siteBaseUrl = "http://www.cyreath.co.uk/"
  $siteUrlList = ["index.html","papers.html","template.html","books.html", "links.html", "profile.html"]
  
 # --------    (S) Specifications and (e) Examples
describe "(S-001) Simple Google test" do 
  
  it "(e-001a) Checks the browser title" do
    browser.navigate.to("https://www.google.com")  
    sleep 1
    expect(browser.title).to eq("Google")
  end

  it "(e-001b) Enters a search" do
    browser.find_element(:name, "q").send_keys("Mark Crowther software testing")
    sleep 1
    browser.find_element(:name, "btnG").click
  end
  
end #S-001

describe "(S-002) Navigate to Cyreath website" do 
  
  it "(e-002a) Finds the site using PARTIAL link text" do
    sleep 1
    browser.find_element(:partial_link_text, "Profile of Mark Crowther").click
    browser.navigate.back
    sleep 1
  end

  it "(e-002b) Finds the site using the FULL link text" do
    browser.find_element(:link_text, "Cyreath.co.uk - Profile of Mark Crowther").click
    browser.navigate.back
    sleep 1
  end

end #do for S-002

describe "(S-003) Check site top navigation" do
   
  it "(e-003a) Tests each of the top navigation elements" do
    $siteUrlList.each do |page|
    browser.navigate.to("#{$siteBaseUrl}#{page}")
    sleep 1 
    end #do
    
  end #it

end #TC-003

describe "(S-004) Checking for broken links on Papers" do
  
  it "(e-004a) Checks the last 5 papers are linked to correctly" do
    a = 0
    totalNoOfPages = 5
    
    browser.navigate.to("#{$siteBaseUrl}#{$siteUrlList[1]}")
 
    while a < totalNoOfPages
      browser.find_elements(:link_text => "Read the paper")[a].click
      a += 1
      sleep 1
      browser.navigate.back
    end #while
    
  end #it
  
end # S-004

describe "(S-005) Confirms template elements are present" do
  
  it "(e-005a) Looks for the banner image being present", :test do
    browser.navigate.to($siteBaseUrl)
    sleep 1
    expect(browser.find_element(:id, "logo")).to be_present
  end
  
  it "(e-005b) Confirms the footer text is present"

  xit "(e-005c) Checks the date has rendered correctly" do
    # get date text and check format is RegEX
  end

end #S-005

#browser.quit

# rspec -fh exampleRSpecRuby.rb > exampleRSpecRuby.html --example "E-004a"
# rspec exampleRSpecRuby.rb -f documentation --tag test 


