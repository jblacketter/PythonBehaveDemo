Feature: Dashboard

  Scenario: Verify that practitioner is able to login
    Given The practitioner is on the Login page
    When The user enters "revboomdoom@dispostable.com"
    Then The practitioner dashboard is viewable


