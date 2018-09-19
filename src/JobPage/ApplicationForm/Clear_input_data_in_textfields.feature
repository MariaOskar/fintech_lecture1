Feature: Click on the cross-button clears the textfield


Scenario: Enter invalid data in the textfield and see the cross-button

    Given unauthorized user on the job application form

    When User enters invalid data <data> to the field <field>

    Then cross-button has appeared

 Examples:
     |field         |data   |
     |fio           |Vasya  |
     |email         |test@  |
     |phone         |123    |
     |city          |3g3h2  |



Scenario: Click ont the cross-button and clear invalid data

    Given unauthorized user on job application form

    When User enter invalid data <data> to the field <field>
    And click cross-button

    Then textfield has been cleared

 Examples:
     |field         |data    |
     |fio           |Vasya   |
     |email         |test@   |
     |phone         |123     |
     |city          |3g3h2   |

