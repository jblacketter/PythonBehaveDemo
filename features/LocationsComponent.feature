@practitioner
@TF32

Feature: LocationsComponent

Background: Verify that practitioner User is able to login
    Given practitioner is on Login page
    And user enters username and password and clicks Login button
    Then home page is displayed

@regression @TC158 @batch2
Scenario: Verify some fields are mandatory on Add Location form
    When a practitioner is in the settings page
    #And user go on location and device tab
    And user go on location and device tab page
    And user clicks on add location button
    And user clicks on Submit on add location form
    And the appropriate error message displays on add location form
    | field           | message                     |
    | Location Name   | Location Name is required.  |
    | Address         | Address is required.        |
    | Location phone  | Location Phone is required. |

@regression @TC157 @TC158 @batch1
Scenario: Create new Location
    When a practitioner is in the settings page
    #And user go on location and device tab
    And user go on location and device tab page
    And user clicks on add location button
    And user fills out add locaton form
        | field           | entry                               |
        | Location Name   | Location <random string>            |
        | Address         | randomized valid address            |
        | Location E-mail | Could be same email as practitioner |
        | Location phone  | <random 10 digit number>            |
        | Devices         | Select first device in drop down    |
    And user clicks on Submit on add location form
    And verify that location is created

@regression @TC159 @batch1
Scenario: Edit Existing location
    When a practitioner is in the settings page
    #And user go on location and device tab
    And user go on location and device tab page
    And user click the edit button for an existing location
    And user edits the following fields
        | field           | edit                        |
        | Location Name   |                             |
        | Address         |                             |
        | Location E-mail |                             |
        | Location phone  |                             |
    And user clicks on Submit on add location form
    And verify that location is updated

@regression @TC161 @batch1
Scenario: Verify that practitioner is able to remove existing location
  When a practitioner is in the settings page
  #And user go on location and device tab
  And user go on location and device tab page
  And user save the first location
  And user click the edit button for an existing location
  And user click on Delete Location on edit form
  Then verify that location is removed

  @inprogress @TC160 @batch1
  Scenario: verify that user is able to Edit Location negative cases
    When a practitioner is in the settings page
    #And user go on location and device tab
    And user go on location and device tab page
    And user click the edit button for an existing location
    And user remove data from form field
    And user click on save changes button
    #And user clicks on Submit on add location form
    And the appropriate error message displays on add location form
    | field           | message                     |
    | Address         | Address field is required   |
    #| Location phone  | Location Phone is required. |
     

