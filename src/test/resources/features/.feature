@NV-1389
Feature: Fleet App Login feature
  User Story:
  As a user, I should be able to login.

  Accounts are: truck driver, store manager, sales manager

  Background: For the scenarios in the feature file, user is expected to be on the login page
    Given The user is on the login page

  @NV-1377
  Scenario Outline: login with valid credentials

    When user type "<username>" in username box
    And user type "<password>" in password box
    And user click login button
    Then user sees Quick Launchpad as a "<expected>" page

    Examples:
      | username | password    | expected        |
      | user1    | UserUser123 | Quick Launchpad |
