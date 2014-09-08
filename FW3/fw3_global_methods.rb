# Example Ruby-Selenium framework - v3.0

# These are the Global Methods the Framework or Test Scripts all use
# If there were a large number, we'd split these into separate files
# --------------------------------------------------------------------

def setup
  @driver = Selenium::WebDriver.for @webDrivertoUse   # fw3_properties.rb
end #setup


def teardown
  @driver.quit
    dateAndTime  
      @testLog.puts("\n................\n\nTest Run Ended on #{@timeRightNow}")
  @testLog.close
end # teardown


def dateAndTime # define a consistent way to create Date and Time for files, errors, etc.
  @timeRightNow = Time.now.strftime("%d-%m-%Y at %H-%M-%S")
end #dateAndTime


def failedTest # Defines what we want to see happen when a test script fails
  dateAndTime                                                       # fw3_global_methods
  testFailTime = @timeRightNow                                      # fw3_global_methods > dateAndTime
  @driver.save_screenshot "./Test-Fail - #{testFailTime}.png"
end


def log_generation
  dateAndTime                                                     # fw3_global_methods
  @testLogTime = @timeRightNow                                    # fw3_global_methods > dateAndTime
  @testLog = File.open("Test Log - #{@testLogTime}.txt", "w")

  @testLog.puts("                   Test Log: #{@testLogTime}\n")  
  @testLog.puts("..................................................................\n\n")
  
end # log_generation
