
# Example Ruby-Selenium framework

# This is the Test Script, it *may* contain some custom feature and test cose
# ideally though, it's this simple, just re-using actions and methods, 
# then data and configuration settings
# --------------------------------------------------------------------------------------------

def testCase_001
  testTitle           # fw2_actions.rb
  setup               # fw2_global_methods.rb
    get_page_url      # fw2_actions.rb
    validate_title    # fw2_actions.rb
  teardown            # fw2_global_methods.rb
end