@practitioner
@TF36

Feature: Authentication

Background: Verify that practitioner User is able to login
    Given practitioner is on Login page
    
@regression  @TC133 @TC129 @batch2
Scenario: Verify practitioner can not login with invalid credentials
    When user enters invalid credentials
    | condition                                                       | email                                   | password   |
    | Login Failed. Please try again or contact Customer Support.     | joeblank@gg.com                         | Wrrrrr10   |
    | Email is required.                                              |                                         | Welcome1@  |
    | Password is required.                                           | revelarpracticemanager@dispostable.com  |            | 
    #| Login Failed. Please try again or contact Customer Support.     | badformat                               | Welcome1@  | 
    Then the appropriate error message displays

@regression @TC131 @TC100 @batch2
Scenario: Forget Your Password 
    When Click on forget password
    Then user enters credentials on forget password page 
    | message                            | field                  | 
    | Email is required.                 | email                  |
    Then the appropriate error message displays  

 @regression @TC23 @batch1
 Scenario: Verify that users is able to login  
    Given practitioner is on Login page
    And user enters username and password and clicks Login button
    Then home page is displayed   

 @batchemail @TC49 @batch2
 Scenario: Verify that user is able to reset password
    When Click on forget password
    Then user fill out email field
    And user click on reset button  
    Then verify user get a message
    Then verify that mail has reached at practitioner

 @regression @TC97 @batch1
 Scenario: Verify that user is able to logout practitioner portal
    Given practitioner is on Login page
    And user enters username and password and clicks Login button
    Then home page is displayed 
    And practitioner logout  


 @regression @TC135 @batch2
 Scenario: Verify that Cookies alert on the practitioner portal
 Given practitioner is on Login page
    And user enters username and password and clicks Login button
    Then home page is displayed 
    Then verify that user able to see cookie policy
       

 @pending @TC49
 Scenario: Verify that Practitioner Resets Password
    Given practitioner is on Login page
    And user click on forgot password link
    Then user enter username and click on Reset button
    Then verify that user get an message