# Example Ruby-Selenium framework - v3.0

# These are all the test actions we have in our example library
# Once there are a large number, we'd split them out into logical sets
# --------------------------------------------------------------------

# Pull in the Test Case title that the Script refers to
def test_case_title
  puts @originalTestCaseTitle         # fw3_properties
end # test_title


# Fetch the page URL to use and open it
def get_page_url
  @driver.get @testUrl                # fw3_properties
end # get_page_url


# Check the web page title is as expected
def validate_page_title
  if @driver.title != @expectedResult then
        failedTest                    #fw3_global_methods
        fail_message = "[FAIL] Title was #{@driver.title}, but we expected #{@expectedResult}"
          puts fail_message
          @testLog.puts("#{@originalTestCaseTitle} \n #{fail_message}")
   else 
     pass_message = "[PASS] Title was as expected"
        puts pass_message
        @testLog.puts("#{@originalTestCaseTitle} \n #{pass_message}")
  end
end


# Work through a list of links and check they are on the page
def validate_page_link_set
 # do each |link|
  # link.text
  # link.location
end


