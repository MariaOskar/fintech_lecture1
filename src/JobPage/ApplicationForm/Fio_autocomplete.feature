Feature: When user enters text into the field "name", he is offered variants of popular names/surnames/patronymics


  # API::getListOfSurnames(String token) -  takes String and makes request to the API (https://api.tinkoff.ru/v1/get_popular_names?origin=web&name={{token}}&type=surname)
  # and returns list of surnames which start with that String


  Scenario: Get suggestion of surname

    Given: unauthorized user on the fio field

    When the user enters cyrillic character/s <character>

    Then the user gets list of surnames <surnames> started with entered character <character>


    Examples:
    | character | surnames                          |
    | Б         | API::getListOfSurnames(character) |
    | По        | API::getListOfSurnames(character) |



  # API::getListOfNames(String token, String gender) - takes String and makes request to the API (https://api.tinkoff.ru/v1/get_popular_names?origin=web&name={{token}}&type=name&gender={{gender}})
  # and returns list of names of the specified gender which start with that String

  Scenario: Get suggestion of name

    Given: unauthorized user on the fio field

    When the user enters <gender> surname <surname> with space
    And  enters cyrillic character/s <character>

    Then the user gets list of names <names> started with entered character <character>
    And with the right gender <gender>


    Examples:
      |surname     |gender  | character | names                                  |
      |Иванов      |male    | Б         | API::getListOfNames(character, gender) |
      |Петрова     |female  | С         | API::getListOfNames(character, gender) |
      |Петросян    |        | А         | API::getListOfNames(character, null)   |


   # API::getListOfPatronymics(String token, String gender) - takes String and makes request to the API (https://api.tinkoff.ru/v1/get_popular_names?origin=web&name={{token}}&type=patronymic&gender={{gender}})
   # and returns list of patronymics of the specified gender which start with that String

  Scenario: Get suggestion of patronymic

    Given: unauthorized user on the fio field

    When the user enters surname <surname> with space
    And  enters  <gender> name <name> with space
    And  enters cyrillic character/s <character>

    Then the user gets list of patronymics <patronymics> started with entered character <character>
    And with the right gender <gender>

    Examples:
      |name     |surname     |gender  | character | patronymics                                  |
      |Иван     |Иванов      |male    | Б         | API::getListOfPatronymics(character, gender) |
      |Зина     |Петрова     |female  | С         | API::getListOfPatronymics(character, gender) |
      |Оксана   |Петросян    |female  | А         | API::getListOfPatronymics(character, gender) |



    Scenario: Select suggested variant

      Given: unauthorized user on the fio field

      When the user enters cyrillic character/s <character>
      And  selects suggested variant <variant>

      Then selected variant appeared in the field

      Examples:
        |character       |variant         |
        |RND::character()|Select::first() |
        |RND::character()|Select::last()  |
        |RND::character()|Select::rand()  |
