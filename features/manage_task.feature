Feature: Add courses to school
    As an User
    I want to create todo list
    So that i can manage my work

Background:
    Given website contain all necessary data
    And I should at todo list page

Scenario: create task 
    When I fill text "write e2e"
    And I click create button
    Then I shoud see "write e2e" content
 
 Scenario: delete task
    When I shoud see content "Build a To-Do App"
    And I click delete "todolist" button
    Then I shoud don't see "Build a To-Do App" content
    
 Scenario: click check box 
    When I shoud see content "Deploy to production"
    And I click check "deploy" box
    Then I shoud see checkbox "deploy" checked