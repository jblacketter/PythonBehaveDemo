@practitioner
@TF8

Feature: Settings

Background: Verify that practitioner User is able to login
    Given practitioner is on Login page
    And user enters username and password and clicks Login button
    Then home page is displayed

@regression @TC151 @TC155 @batch1
Scenario: Verify that a Practioner can edit Profile
    # TODO: discuss handling edited data. we can toggle between 2 known states, or reset at end of test
    # The edited data could also affect other tests like Locations so we need to handle carefully
    When a practitioner is in the settings page
    And the user selects Edit for Practitioner Profile
    Then these fields should be visible
    | field             | edit                              |
    | First name        | Practice                          |
    | Middle name       |                                   |
    | Last name         | Manager                           |
    | Sex               | Female                            | 
    | DOB               |                                   |
    #| Language          | English                           |
    | Email             | <practice manager email>          | 
    #| Phone             | 123123123                         |     
    | Specialties       | Acupuncture                       |
    #| Show in Revelar Directory | Yes                       |
    | email notification of new Revelar Messages | Yes      |
    When the user edits these fields
    | field             | edit                              |
    | First name        | PracticeEdit                      |
    | Last name         | ManagerEdit                       |
    | Phone             | 7654321                           |  
    | Sex               | Male                              | 
    | Specialties       | Beauty                            |
    And the user selects Save
    And the user selects Edit for Practitioner Profile
    Then the edited fields should be visible in the pracitioner Profile
    | label             | text                              |
    | First name        | PracticeEdit                      |
    | Last name         | ManagerEdit                       |
    | Phone             | 7654321                           |  
    | Sex               | Male                              | 
    | Specialties       | Beauty                            |
    #  we should save this back to the original setting as a test cleanup step
    When the user edits these fields
    | field             | edit                              |
    | First name        | Practice                          |
    | Last name         | Manager                           |
    | Phone             | 123123123                         |  
    | Sex               | Female                            | 
    #| Specialties       | Acupuncture                       |
    And the user selects Save
    And the user selects Edit for Practitioner Profile
    Then the edited fields should be visible in the pracitioner Profile
    | label             | text                              |
    | First name        | Practice                          |
    | Last name         | Manager                           |
    | Phone             | 123123123                         |  
    | Sex               | Female                            | 
    | Specialties       | Acupuncture                       |

@regression @TC151 @TC156 @TC174 @TC175 @batch1
Scenario: Verify that a Practioner can edit Practice Profile
    When a practitioner is in the settings page
    And the user selects Edit for Practice Profile
    Then the field can be edited
    | field                 | edit                              |
    | Practice Manager      | Practice92 Edit                   |
    And user selects address
    And the user selects Save in Practice Profile
    #Then the Practice Profile name should reflect the edit 
    #  we should save this back to the original setting as a test cleanup step
    And the user selects Edit for Practice Profile
    Then the field can be edited
    | field                 | edit                              |
    | Practice92Edit        | Practice Manager                  |
    And user selects address
    And the user selects Save in Practice Profile
    Then the Practice Profile name should reflect the edit 

@regression @TC274 @batch2
Scenario: Verify that user is able to change password on setting page
    When a practitioner is in the settings page
    Then user click on change password
    And user fill out all required details 
    Then Verify that user is able to change password on setting page   

 @regression @TC275 @batch1
Scenario: Verify practitioner can not change password with invalid password
    When a practitioner is in the settings page
    Then user click on change password
    And user fill out invalid value 
    And Verify practitioner can not change password with invalid password

@pending @TC106
Scenario: Verify that Practitioner can edit his thumbnail on the settings page  

@regression @batch2
Scenario: Verify that user is able to go on Active Policies
    When a practitioner is in the settings page
    And user click on Document Processing Agreement
    And user very that able to go on Policies page

    @regression @batch2
    Scenario: Verify some fields are manadatory on send invitation form
        When a practitioner is in the settings page
        And user clicks on practice and colleages section
        When user clicks on Send invitation
        And user clicks on Send button on send invitation form
        And the appropriate error message displays on send invitation form
            | field      | message                 |
            | First name | First name is required. |
            | Last name  | Last name is required.  |
            | Email      | Email is required.      |