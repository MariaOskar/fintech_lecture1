Feature: Navigate the page on mobile device


Scenario: Watch vacancy block

    Given unauthorized user on moscow-job.tinkoff.ru page

    When user navigates to the vacancy block

    Then user sees vacancies located one under the other on the entire width of the screen



Scenario: Watch steps block

    Given unauthorized user on moscow-job.tinkoff.ru page

    When user navigates to the steps block

    Then user sees carousel with steps on the entire width of the screen




Scenario: Slide steps in steps block

    Given unauthorized user on steps block

    When user click on dots under the carousel with steps

    Then user sees one step changes to another




Scenario: Watch application form

    Given unauthorized user  on moscow-job.tinkoff.ru page

    When user navigates to the application form

    Then user sees the form on the entire width of the screen




Scenario: Find button "Оставить заявку"

    Given unauthorized user  on moscow-job.tinkoff.ru page

    When user navigates to the button "Оставить заявку"

    Then user sees the button on the entire width of the screen



