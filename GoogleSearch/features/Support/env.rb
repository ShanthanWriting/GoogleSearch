require 'rubygems'
require 'rspec'
require 'watir'
require 'page-object'
require 'webdrivers/chromedriver'



# Creating Remote WebDriver

Before do
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
end
