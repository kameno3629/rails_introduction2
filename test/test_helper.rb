# test/test_helper.rb

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

# Capybaraの設定を追加
require 'capybara/rails'
Capybara.app_host = "http://localhost:3000"
Capybara.server_host = "0.0.0.0"
Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: Selenium::WebDriver::Chrome::Options.new(binary: "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"))
end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
