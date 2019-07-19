Feature: Dashboard

  Scenario: The practitioner logs in to the portal
    Given The practitioner is on the login page
    When The user enters "revboomdoom@dispostable.com"
    Then The practitioner dashboard is viewable
