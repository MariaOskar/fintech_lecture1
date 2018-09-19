Feature: Fill job application form with valid data and submit


Scenario: Successful submit

    Given unauthorized user on the application form

    When user enters valid data: name <name>, email <email>, phone <phone>, city <city>, vacancy <vacancy>
    And selects checkbox of privacy policy
    And clicks submit button

    Then the application form sent successfully
    And "Success" message <message> is displayed

    Examples:
    |name                      |email           |phone        |city    |vacancy                      |message
    |Vasja Ivanov              |test@test.ru    |9165286363   |Moscow  |Продавец-консультант         |Анкета отправлена
    |Vasja Ivanov Ivanovich    |test@test.com   |9165286363   |Moscow  |Специалист отдела взыскания  |Анкета отправлена
    |Вася Иванов Иванович      |test@test.ru    |9165286363   |Москва  |Представитель банка          |Анкета отправлена
    |Вася Иванов               |test@test.com   |9165286363   |Москва  |Специалист отдела взыскания  |Анкета отправлена
    |Vasja Ivanov              |test@test.ru    |9165286363   |Moscow  |Продавец-консультант         |Анкета отправлена


Postconditions:
Free database from unnecessary test data

