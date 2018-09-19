Feature: Links on the page lead to correct corresponding pages


Scenario: Navigate to the weboffice.tinkoff.page through the link

    Given unauthorized user on moscow-job.tinkoff.ru page

    When user clicks on the link <link>

    Then user is redirected to the corresponding page <page>


   Examples:
      |link                                                          |page
      |Чтобы работать из дома, выбери вакансию и пройди обучение     |https://weboffice.tinkoff.ru
      |TinkoffLogo                                                   |https://moscow-job.tinkoff.ru/