Feature: Click the link and the page scrolls to the job application form.


Scenario: Navigate to the form via vacancy link

    Given unauthorized user on moscow-job.tinkoff.ru page

    When user clicks on the link below the vacancy block <vacancy block>

    Then page has scrolled to the application form
    And the form is properly seen in the middle of the page


  Examples:
    |vacancy block                          |
    |Продавец-консультант                   |
    |Специалист отдела взыскания            |
    |Менеджер по продажам Тинькофф Мобайл   |
    |Менеджер по продажам B2B               |
    |Представитель банка                    |
    |Кредитный инспектор                    |





Scenario: Navigate to the form via link "заявка"

    Given unauthorized user on moscow-job.tinkoff.ru page

    When user clicks on the link "заявка"

    Then page has scrolled to the application form
    And the form is properly seen in the middle of the page


