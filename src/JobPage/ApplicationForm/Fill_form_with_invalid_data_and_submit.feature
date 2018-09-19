Feature: Fill the application form with invalid data and submit.



Scenario: Submit form with invalid name ( fill only name, without surname)

    Given unauthorized user on the application form

    When user enters valid data (email <email>, phone <phone>, city <city>, vacancy <vacancy>) except for the name <name>
    And User selects checkbox of privacy policy

    Then the submit button stays disabled
    And the appropriate message '<message>' has displayed


    Examples:
    |name   |email          |phone        |city    |vacancy               |message                                                                                                  |
    |Vasja  |test@test.ru   |5555555555   |Moscow  |Продавец-консультант  |Недостаточно информации. Введите фамилию, имя и отчество через пробел (Например: Иванов Иван Алексеевич) |





Scenario: Submit form with blank name

    Given unauthorized user on the application form

    When user enters valid data (email <email>, phone <phone>, city <city>, vacancy <vacancy>) except for the name <name>
    And User selects checkbox of privacy policy

    Then the submit button has stayed disabled
    And the appropriate message '<message>' has displayed

     Examples:
     |name   |email          |phone        |city    |vacancy               |message           |
     |       |test@test.ru   |5555555555   |Moscow  |Продавец-консультант  |Поле обязательное |





Scenario: Submit form with invalid name (symbols)

    Given unauthorized user on the application form

    When user enters valid data (email <email>, phone <phone>, city <city>, vacancy <vacancy>) except for the name <name>
    And User selects checkbox of privacy policy

    Then the submit button has stayed disabled
    And the appropriate message '<message>' has displayed

     Examples:
     |name                                                    |email          |phone        |city    |vacancy               |message                                                                   |
     |@%#^$%^&*()_+                                           |test@test.ru   |5555555555   |Moscow  |Продавец-консультант  |Допустимо использовать только буквы русского, латинского алфавита и дефис |
     |Петя%&*#+ Кузнецов                                      |test@test.ru   |5555555555   |Moscow  |Продавец-консультант  |Допустимо использовать только буквы русского, латинского алфавита и дефис |
     |<SCRIPT type="text/javascript"> .. evil JS </SCRIPT>    |test@test.ru   |5555555555   |Moscow  |Продавец-консультант  |You are not as clever as you think                                        |





 Scenario: Submit form with invalid name (numbers)

     Given unauthorized user on the application form

     When user enters valid data (email <email>, phone <phone>, city <city>, vacancy <vacancy>) except for the name <name>
     And User selects checkbox of privacy policy

     Then the submit button has stayed disabled
     And field name has stayed empty
     And the appropriate message '<message>' has displayed

      Examples:
      |name           |email          |phone        |city    |vacancy               |message           |
      |1234567890     |test@test.ru   |5555555555   |Moscow  |Продавец-консультант  |Поле обязательное |





Scenario: Submit form with blank email

    Given unauthorized user on the application form

    When user enters valid data (name <name>, phone <phone>, city <city>, vacancy <vacancy>) except for the email <email>
    And User selects checkbox of privacy policy

    Then the submit button has stayed disabled
    And the appropriate message '<message>' has displayed

     Examples:
     |name          |email      |phone        |city    |vacancy               |message            |
     |Вася Иванов   |           |5555555555   |Moscow  |Продавец-консультант  |Поле обязательное  |






Scenario: Submit form with invalid email format

    Given unauthorized user on the application form

    When user enters valid data (name <name>, phone <phone>, city <city>, vacancy <vacancy>) except for the email <email>
    And User selects checkbox of privacy policy

    Then the submit button has stayed disabled
    And the appropriate message '<message>' has displayed

     Examples:
     |name          |email           |phone        |city    |vacancy               |message                             |
     |Вася Иванов   |dfsdfsdfds      |5555555555   |Moscow  |Продавец-консультант  |Введите корректный адрес эл. почты  |
     |Вася Иванов   |авпавпвпва      |5555555555   |Moscow  |Продавец-консультант  |Введите корректный адрес эл. почты  |
     |Вася Иванов   |test@@test.ru   |5555555555   |Moscow  |Продавец-консультант  |Введите корректный адрес эл. почты  |
     |Вася Иванов   |test@test.r"u   |5555555555   |Moscow  |Продавец-консультант  |Введите корректный адрес эл. почты  |
     |Вася Иванов   |@test@test.ru   |5555555555   |Moscow  |Продавец-консультант  |Введите корректный адрес эл. почты  |
     |Вася Иванов   |testtest.ru     |5555555555   |Moscow  |Продавец-консультант  |Введите корректный адрес эл. почты  |
     |Вася Иванов   |te t@test.ru    |5555555555   |Moscow  |Продавец-консультант  |Введите корректный адрес эл. почты  |
     |Вася Иванов   |te$t@test.ru    |5555555555   |Moscow  |Продавец-консультант  |Введите корректный адрес эл. почты  |






Scenario: Submit form with invalid phone

    Given unauthorized user on the application form

    When user enters valid data (name <name>, email <email>, city <city>, vacancy <vacancy>) except for the phone <phone>
    And User selects checkbox of privacy policy

    Then the submit button has stayed disabled
    And the appropriate message '<message>' has displayed

     Examples:
     |name          |email           |phone         |city    |vacancy               |message                                                                |
     |Вася Иванов   |test@test.ru    |1234567890    |Moscow  |Продавец-консультант  |Код города/оператора должен начинаться с цифры 3, 4, 5, 6, 8, 9        |
     |Вася Иванов   |test@test.ru    |01234         |Moscow  |Продавец-консультант  |Номер телефона должен состоять из 10 цифр, начиная с кода оператора    |




Scenario: Submit form with invalid phone (fill with symbols/letters)

    Given unauthorized user on the application form

    When user enters valid data (name <name>, email <email>, city <city>, vacancy <vacancy>) except for the phone <phone>
    And User selects checkbox of privacy policy

    Then the submit button has stayed disabled
    And field phone has stayed empty
    And the appropriate message '<message>' has displayed

     Examples:
     |name          |email           |phone                     |city    |vacancy               |message                            |
     |Вася Иванов   |test@test.ru    |!"№;%:?*()_+=-!@#$%^&*   |Moscow  |Продавец-консультант  |Необходимо указать номер телефона  |
     |Вася Иванов   |test@test.ru    |kfjsdkfjdflksjfksdjfl     |Moscow  |Продавец-консультант  |Необходимо указать номер телефона  |
     |Вася Иванов   |test@test.ru    |алвоалывоадлывоаылдао     |Moscow  |Продавец-консультант  |Необходимо указать номер телефона  |





Scenario: Submit form with invalid city (symbols/numbers)

    Given unauthorized user on the application form

    When user enters valid data (name <name>, email <email>, phone <phone>, vacancy <vacancy>) except for the city <city>
    And User selects checkbox of privacy policy

    Then the submit button has stayed disabled
    And the appropriate message '<message>' has displayed

     Examples:
     |name         |email          |phone        |city                                                   |vacancy               |message                                                                    |
     |Вася Иванов  |test@test.ru   |5555555555   |Mos5cow                                                |Продавец-консультант  |Допустимо использовать только буквы русского, латинского алфавита и дефис  |
     |Вася Иванов  |test@test.ru   |5555555555   |5Москва                                                |Продавец-консультант  |Допустимо использовать только буквы русского, латинского алфавита и дефис  |
     |Вася Иванов  |test@test.ru   |5555555555   |4342343                                                |Продавец-консультант  |Допустимо использовать только буквы русского, латинского алфавита и дефис  |
     |Вася Иванов  |test@test.ru   |5555555555   |!@#$%^&*()_+!"№;%:?                                   |Продавец-консультант  |Допустимо использовать только буквы русского, латинского алфавита и дефис  |
     |Вася Иванов  |test@test.ru   |5555555555   |<SCRIPT type="text/javascript"> .. evil JS </SCRIPT>   |Продавец-консультант  |Допустимо использовать только буквы русского, латинского алфавита и дефис  |






Scenario: Submit form with blank city

    Given unauthorized user on the application form

    When user enters valid data (name <name>, email <email>, phone <phone>, vacancy <vacancy>) except for the city <city>
    And User selects checkbox of privacy policy

    Then the submit button has stayed disabled
    And the appropriate message '<message>' has displayed

 Examples:
 |name          |email           |phone        |city    |vacancy               |message           |
 |Вася Иванов   |test@test.ru    |5555555555   |        |Продавец-консультант  |Поле обязательное |






Scenario: Submit form with blank vacancy

    Given unauthorized user on the application form

    When user enters valid data (name <name>, email <email>, phone <phone>, city <city>) except for the vacancy <vacancy>
    And User selects checkbox of privacy policy

    Then the submit button has stayed disabled
    And the appropriate message '<message>' has displayed

 Examples:
 |name          |email           |phone        |city    |vacancy           |message             |
 |Вася Иванов   |test@test.ru    |5555555555   |        |                  |Поле обязательное   |




