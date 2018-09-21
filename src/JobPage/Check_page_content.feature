Feature: Look through the page and check all blocks are present

  Scenario: Find logo

    Given unauthorized user

    When the user opens the moscow-job.tinkoff.ru page

    Then he sees logo in the top-left corner of the screen


  Scenario: Find product block

    Given unauthorized user

    When the user opens the moscow-job.tinkoff.ru page

    Then he sees product block
    And it contains: title, subtitle and button


  Scenario: Find title block with phone number and link

    Given unauthorized user on the moscow-job.tinkoff.ru page

    When the user scrolls the page

    Then user sees title block with the phone number and link in subtitle


# preconditions: get data with actual vacancies from rest or db

  Scenario Outline: Find vacancy block

    Given unauthorized user on the moscow-job.tinkoff.ru page

    When the user scrolls the page

    Then he sees <vacancy> block on the panel list
    And  it contains: title, picture, content, link

    Examples:
      |vacancy                       |
      |dataSource: @actualVacancies  |



  Scenario: Find product advantages block

    Given unauthorized user on the moscow-job.tinkoff.ru page

    When the user scrolls the page

    Then he sees product advantages block
    And block contains: title, picture and content



  Scenario: Find product steps block

    Given unauthorized user on the moscow-job.tinkoff.ru page

    When the user scrolls the page

    Then he sees product steps block
    And block contains: title, pictures and steps


  Scenario: Find application form

    Given unauthorized user on the moscow-job.tinkoff.ru page

    When the user scrolls the page

    Then he sees the form
    And form contains: header, inputs, checkbox and submit button



  Scenario: Find copyright in the footer

    Given unauthorized user on the moscow-job.tinkoff.ru page

    When the user scrolls to the end of the page

    Then he sees copyright info in the footer












