# Example Ruby-Selenium framework

# The data for the elements below are hard coded for this exmaple.
# Usually they'd be parameters in abstract Excel files or a database.
# -------------------------------------------------------------------

@originalTestCaseTitle = "(TC-001) Checking the browser title"
@testUrl = 'http://www.google.com'
@expectedResult = 'Google' #<-- Change this to BREAK the test
@webDrivertoUse = :firefox
