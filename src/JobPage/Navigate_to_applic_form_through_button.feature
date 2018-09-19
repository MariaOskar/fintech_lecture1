Feature: Button for application scrolls a page to the job application form.


Scenario: Navigate to the job application form through the button

    Given unauthorized user on moscow-job.tinkoff.ru page

    When User click the button "Оставить заявку"

    Then page has scrolled to the application form
    And the form is properly seen in the middle of the page