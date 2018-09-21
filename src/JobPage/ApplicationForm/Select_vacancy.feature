Feature: Data in select corresponds to vacancies in the list on the page

  Scenario: Select vacancy

    Given unauthorized user on the application form

    When the user opens select

    Then the user sees that options correspond to vacancies on the page