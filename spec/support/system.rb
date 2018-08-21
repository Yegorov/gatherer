# Capybara.register_driver :webkit do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :chrome)
# end

RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by :rack_test
  end

  config.before(:each, type: :system, js: true) do
    driven_by :selenium_chrome_headless
  end
end

require "capybara-screenshot/rspec"
