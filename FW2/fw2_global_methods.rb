# Example Ruby-Selenium framework

# These are the Global Methods the Framework or Test Scripts all use
# If there were a large number, we'd split these into seperate files
# --------------------------------------------------------------------

def setup
  @driver = Selenium::WebDriver.for @webDrivertoUse   # fw2_properties.rb
end

def teardown
  @driver.quit
end
