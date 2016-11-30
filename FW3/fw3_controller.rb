# Example Ruby-Selenium framework - v3.0

# This file is the CONTROLLER
# It contains only the Gems and Test Cases we want to run
#--------------------------------------------------------

# Load Gems
require 'selenium-webdriver'
require 'win32ole'

# Pull in framework files
require_relative 'fw3_actions'
require_relative 'fw3_global_methods'
require_relative 'fw3_properties'

# Pull in Test Scripts (this would be dynamic later, pulled in from our Config Excel or DB)
require_relative 'fw3_testCase_001'

# Call Test Scripts
log_generation  # If we wanted this to be on/off, it could be moved to fw3_global_methods > setup
testCase_001
