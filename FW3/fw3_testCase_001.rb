
# Example Ruby-Selenium framework - v3.0

# This is the Test Script, it *may* contain some custom feature and test cose
# ideally though, it's this simple, just re-using actions and methods, 
# then data and configuration settings
# --------------------------------------------------------------------------------------------

def testCase_001
  test_case_title           # fw3_actions.rb
  setup                     # fw3_global_methods.rb
  
    get_page_url            # fw3_actions.rb
    validate_page_title     # fw3_actions.rb
    validate_page_link_set  # fw3_actions.rb
    
  teardown                  # fw3_global_methods.rb
end