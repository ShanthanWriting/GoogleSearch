require_relative '../pages/searchPage'

Given(/^that I have gone to the Google page$/) do
  @google_page = SearchPage.new(@browser)
  @google_page.visit_page
end

When(/^I add '(.*)' to the search box$/) do |search_input|
  # @google_page.search_box.wait_until(&:present?)
  @google_page.enter_search_word(search_input)
end

And(/^click the Search Button$/) do
  @google_page.click_search_button
end

Then(/^page title should contain '(.*)'$/) do |search_input|
  @search_result = SearchResultsPage.new(@browser)
  @search_result.verify_page_title(search_input)
end

Then(/^'(.*)' should be mentioned in the results$/) do |search_input|
  @search_result.search_results_present(search_input)
end
