Feature: Privacy policy popup


Scenario: Navigate to the privacy policy via link

    Given unauthorized user on job application form

    When User clicks on the checkbox link

    Then popup has displayed




Scenario: Read privacy policy content in popup

    Given unauthorized user on job application form

    When User clicks on the checkbox link

    Then popup has displayed
    And popup content is available




Scenario: Close popup

    Given unauthorized user on job application form with opened popup

    When User clicks on close button

    Then popup has closed


