@practitioner
@TF29

Feature: ColleaguesComponent

  Background: Verify that practitioner User is able to login
    Given practitioner is on Login page
    And user enters username and password and clicks Login button
    Then home page is displayed

  @regression @TC171 @batch2
  Scenario: Verify some fields are manadatory on Invite Colleague form
    When a practitioner is in the settings page
    #And user go on practice and colleagues tab
    And user go on practice and colleagues tab page
    And user clicks on Invite button
    And user clicks on Submit on invite form
    And the appropriate error message displays on invite colleague form
      | field      | message                 |
      | First name | First name is required. |
      | Last name  | Last name is required.  |
      | Email      | Email is required.      |

  @TC187 @TC169 @TC253 @TC172 @batch1 @batchemail
  Scenario: verify that practitioner can invite colleagues
    When a practitioner is in the settings page
     #And user go on practice and colleagues tab
    And user go on practice and colleagues tab page
    And user clicks on Invite button
    And user enter values on invite form
    And user clicks on Submit on invite form
    Then verify that invitation sent to the colleague
    Then verify that mail has reached at colleague


## add this  new text verification to the invitation scenario 
 #Scenario: Verify that practitioner can invite colleagues
    #When a practitioner is in the settings page
    #And user go on practice and colleagues tab
    #And user clicks on Invite button
    #And user enter values on invite form
    #And user clicks on Submit on invite form
    #Then verify the success text displays "You have successfully invited" %Name "to join Revelar. This invitation will be valid for 7 days."

  @regression @TC168 @batch2
  Scenario: Verify that user is able to view colleague
    When a practitioner is in the settings page
    And user clicks on practice and colleagues tab
    Then verify that user is able to view colleague

  @pending @TC173
  Scenario: Verify that user is able to Practitioner Profile Creation Form with negative cases


