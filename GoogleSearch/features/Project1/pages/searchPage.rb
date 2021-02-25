require 'page-object'

class SearchPage
  include PageObject

  text_field(:search_box, name: 'q')
  button(:search, value: 'Google Search')

  def visit_page
    @browser.goto 'http://www.google.com'
  end

  def enter_search_word(search_key)
    self.search_box = search_key
  end

  def click_search_button
    search
  end

  def close
    @browser.close
  end
end
