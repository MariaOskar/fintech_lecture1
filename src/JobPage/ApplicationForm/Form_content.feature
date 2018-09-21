Feature: Form consists of header, inputs, select, checkbox and button


  Scenario: Check header presence

    Given unauthorized user on the job application form

    When the user looks at the form

    Then the user sees header with form's title



  Scenario: Check fields presence

    Given unauthorized user on the job application form

    When the user searches for the form field <field>

    Then the user found it in form

  Examples:
  |field   |
  |fio     |
  |email   |
  |phone   |
  |city    |
  |vacancy |


  Scenario: Find required fields

    Given unauthorized user on the job application form

    When the user look at form field <field>

    Then the user sees that it is marked with asterix

  Examples:
  |field   |
  |fio     |
  |email   |
  |phone   |
  |city    |
  |vacancy |



  Scenario: Check checkbox presence

    Given unauthorized user on the job application form

    When the user searches for the checkbox with privacy policy

    Then the user found it below fields, on the left side from the button
    And checkbox description has link to privacy policy



  Scenario: Check submit button presence

    Given unauthorized user on the job application form

    When the user searches for submit button

    Then the user found it below fields, on the right side from the checkbox