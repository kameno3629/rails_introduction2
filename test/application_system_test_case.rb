# test/application_system_test_case.rb

require "test_helper"

Webdrivers::Chromedriver.required_version = "114.0.5735.90"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
end
