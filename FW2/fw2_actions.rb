# Example Ruby-Selenium framework

# These are all the actions we have in our library
# Once there are a large number, we'd split them out into logical sets
# --------------------------------------------------------------------

# Pull in the Test Case title that the Script refers to
def testTitle
  puts @originalTestCaseTitle         # fw2_properties.rb
end

def get_page_url
  @driver.get @testUrl                # fw2_properties.rb
end

def validate_title
  if @driver.title != @expectedResult then
       @driver.save_screenshot "./#{Time.now.strftime("failshot__%d_%m_%Y__%H_%M_%S")}.png"
       puts "Error - Title was #{@driver.title}, but we expected #{@expectedResult}"
   else 
     puts "Test Passed"
  end
end
