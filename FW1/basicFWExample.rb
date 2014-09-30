# This script gives us a simple example of how to use just Selenium Webdriver
# using Ruby and nothing else (no RSpec, Error trapping, Yield, etc. that we might add later)
# but it DOES capture a screen shot on failure
# We also see how we'd break-down items to build a more maintainable framework
# ----------------------------------------------------------------------------

require 'selenium-webdriver'

# -------- Put this stuff in a PROPERTIES or CONFIGURATIONS file -----------
# ---- Assigned values below would be referenced here (e.g. from an Excel file)

@originalTestCaseTitle = "(TC-001) Checking the browser title"
@testUrl = 'http://www.google.com'
@expectedResult = 'Googleaaaa'
@webDrivertoUse = :firefox

#-------- This lot would be in a Function / Method LIBRARY  -----------

def setup
  @driver = Selenium::WebDriver.for @webDrivertoUse
end

def teardown
  @driver.quit
end

def testTitle
  puts @originalTestCaseTitle
end

def get_page_url
  @driver.get @testUrl
end

def validate_title
  if @driver.title != @expectedResult then
       @driver.save_screenshot "./#{Time.now.strftime("failshot_%d-%m-%Y_at_%H-%M-%S")}.png"
       puts "Error - Title was #{@driver.title}, but we expected #{@expectedResult}"
   else 
     puts "Test Passed"
  end
end

# ----------- This is the Test Script ---------------

def testScript001
  testTitle
  setup
    get_page_url
    validate_title
  teardown
end

#----------------- in the CONTROLLER file we'd then call the test -----------------

testScript001

