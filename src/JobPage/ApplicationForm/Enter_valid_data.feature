Feature: Fill job application form with valid data and submit


# Preconditions:
#    We use random data, which generated with special service
#    RND::name() returns result corresponding  /([A-Z][a-z]+) ([A-Z][a-z]+)( ([A-Z][a-z]+))?/ or /([А-Я][а-я]+) ([А-Я][а-я]+)( ([А-Я][а-я]+))?/
#    RND::email() returns result corresponding /([\w]+)@([\w]+)\.([\w]{2,63})/i
#    RND::phone() returns result corresponding /([345689][\d]{9})/
#    RND::city() returns result corresponding  /([A-Za-z \-]+)/ or ([А-Яа-я \-]+)
#    RND::selectItem() returns random select item


    Scenario: Successful submit

    Given unauthorized user on the application form

    When user enters valid data: name <name>, email <email>, phone <phone>, city <city>, vacancy <vacancy>
    And selects checkbox of privacy policy
    And clicks submit button

    Then the application form sent successfully
    And "Success" message <message> is displayed

    Examples:
    |name          |email       |phone        |city        |vacancy          |message           |
    |RND::name()   |RND::email()|RND::phone() |RND::city() |RND::selectItem()|Анкета отправлена |


# Postconditions:
# Free database from unnecessary test data

