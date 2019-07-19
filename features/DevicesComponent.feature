@practitioner
@TF33

Feature: DevicesComponent

Background: Verify that practitioner User is able to login
    Given practitioner is on Login page
    And user enters username and password and clicks Login button
    Then home page is displayed

Scenario: Verify that a practitioner cannot add a device with wrong pin
    When a practitioner is in the settings page
    #And user go on location and device tab
    And user go on location and device tab page
    And user clicks on Add Device
    And user enters device pin on add device form
    And user clicks next on add device form
    Then verify that pin is wrong

Scenario: Verify some fields are manadatory on add device form
    When a practitioner is in the settings page
    #And user go on location and device tab
    And user go on location and device tab page
    And user clicks on Add Device
    And user clicks next on add device form
    Then the appropriate error message displays on add device form
    | field      | message                 |
    | Device PIN | Device Pin is required. |

Scenario: Verify that a practitioner can edit details on add device form
    When a practitioner is in the settings page
    #And user go on location and device tab
    And user go on location and device tab page
    #And user clicks on Edit Device
   #And user removes one existing location from the device and selects Save
    And user clicks on Edit Device
    #Then the location should be removed from the device
    And user add one location to the device and selects Save
    And user clicks on Edit Device
    Then verify that location added to the device

 Scenario: Verify that user is able to add device without location 
    When a practitioner is in the settings page
    And user go on location and device tab page
    Then user clicks on Add Device
    And user get dynamic pin number on device tab 
    And user click on next button on add device Page
    And user is on the Registration Pin page
    And user click on skip button
    And Verify that user is able to add device without location    

Scenario: Verify that practitioner can add device with a new pin
    When a practitioner is in the settings page
    #And user go on location and device tab
    And user go on location and device tab page
    Then user clicks on Add Device
    And user get dynamic pin number on device tab 
    And user click on next button on add device Page
    And user add location to the device and selects Save
    #Then verify that device is added
    Then verify that deviceId is added using new pin in Location and Device page 

Scenario: Verify that user is able to Edit Device negative cases
    When a practitioner is in the settings page
    And user go on location and device tab page
    And user click on edit icon on Edit device
    And user clear the Location field
    Then verify that user is not able click save btn 

 Scenario: Verify that user is able to Unpair Device
    When a practitioner is in the settings page
    And user go on location and device tab page
    And user clicks on Edit Device
    And user click on unpair button 
    And user click on confirm unpair
    And Verify that user is able to Unpair Device