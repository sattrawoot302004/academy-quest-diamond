Feature: Brag page
    As an User
    I want to create todo list
    So that i can manage my work

Background:
    Given website contain all necessary data
    And I should at todo list page

Scenario: Brag document
    When I click button brag document
    Then I should visit in brag page
    And  I shoud see "เป้าหมายของปีนี้" content