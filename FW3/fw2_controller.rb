# Example Ruby-Selenium framework

# This file is the CONTROLLER
# It contains only the Gems and Test Cases we want to run
#--------------------------------------------------------

# Load Gems
require 'selenium-webdriver'

# Pull in framework files
require_relative 'fw2_actions'
require_relative 'fw2_global_methods'
require_relative 'fw2_properties'

# Pull in Test Scripts (this would be dynamic later, pulled in from our Config Excel or DB)
require_relative 'fw2_testCase_001'

# Call Test Scripts
testCase_001