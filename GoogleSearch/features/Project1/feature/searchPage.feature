Feature: Search Google Page


  Scenario Outline:
    Given that I have gone to the Google page
    When I add '<search_input>' to the search box
    And click the Search Button
    Then  page title should contain '<search_input>'
    And '<search_input>' should be mentioned in the results

    Examples:
      | search_input |
      | Duck         |
      | DUCK         |
      | duck         |