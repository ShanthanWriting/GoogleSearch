require 'page-object'
require 'rspec'
require 'rspec/expectations'
require 'selenium-webdriver'
require 'rubygems'
require 'test-unit'
require 'test/unit/assertions'


class SearchResultsPage
  include PageObject
  include Test::Unit::Assertions
  include Selenium::WebDriver::SearchContext


  def search_results
    @browser.element(:css, 'div>a>h3>span')
  end

  def verify_page_title(title)
    assert @browser.title.include?(title)
  end

  def search_results_present(search_key)
    search_results.lis.each do |result|
      assert result.text.include?(search_key)
    end
  end

end