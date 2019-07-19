@practitioner
@TF77

Feature: GlobalSearch

    Background: Verify that practitioner User is able to login
        Given practitioner is on Login page
        And user enters username and password and clicks Login button
        Then home page is displayed

    Scenario: Verify that a practitioner can search for patients
        When copy patient from local file
        And a practitioner is in the patients page
    # When a practitioner performs a full text search for a patient
    #     | Search Text           | Search Filter            |
    #     | First                 | Only My Patients         |
    #     | Last                  | Only My Patients         |
    #     | First                 | Patients of my practice  |
    #     | Last                  | Patients of my practice  |
    # Then the results should be filtered by the search
    And when a practitioner performs a partial text search for a patient
        | Partial Search Text   | Search Filter            |
        | Fname                 | Only My Patients         |
        | Lname                 | Only My Patients         |
        | Fname                 | Patients of my practice  |
        | Lname                 | Patients of my practice  |
    Then the results should be filtered with all items matching the partial search

Scenario: Verify that a practitioner can search for patient using search function
    When copy patient from local file
    And user seacrh for the patient on search feature
        | Search Criteria       |
        | First Name            |
        | Last Name             |
