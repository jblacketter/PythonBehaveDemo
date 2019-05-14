@practitioner
@TF27

Feature: CreateAccount

@regression @TC182 @TC184 @batch2 @testtemp
Scenario: Verify mandatory fields in Registration Pin page
    When a practitioner is in the Registration Pin page
    And user selects mandatory fields and tabs out
    And user get dynamic pin number 
    And user click on next button
    And user clicks on Create Account
    Then the appropriate error message displays on registration form
    | field                   | message                              |
    | First Name              | First name is required.              |
    | Last Name               | Last name is required.               |
    | Sex                     | Sex is required.                     |
    | Day of Birth            | Birthdate is required.               |
    | Email                   | Email is required.                   |
    | Practice Name           | Practice Name is required.           |
    | Practice Address        | Practice Address is required   |
    #| Language               | Language field is required           |
    | Confirm Password        | Confirm Password is required.        |


 @createuser @TC104 @TC181 @test
Scenario: Verify a new practioner can register with pin
    When a practitioner is in the Registration Pin page
    And user selects mandatory fields and tabs out
    And user get dynamic pin number 
    And user click on next button
    And user fill out the form with all required fields
    #And copy new practioner user from local file
    And user clicks on Create Account
    And verify that the practitioner is created with correct data

@regression @TC182 @TC181 @batch2
Scenario: Verify that user Select 'yes' for 'I have a Revelar account' Submit the login form with blank fields Check validation
    When a practitioner is in the Registration Pin page
    Then user select yes button
    And Submit the login form with blank fields Check validation
     | field      |    message               |        
     | Email      |    Email is required.    |     
     | Password   |    Password is required. |     


@regression @TC183 @batch1
Scenario: Verify that User sees Stop message when Select 'yes' for My Organization Already Uses Revelar Products
    When a practitioner is in the Registration Pin page
    And user Select no for I have a Revelar account
    And user Select yes for My Organization Already Uses Revelar Products
    And  Verify that User sees Stop message

@regression @TC103 @batch1
Scenario: Verify that user is not able to register with Pmore than 5 digits PIN
    When a practitioner is in the Registration Pin page
    And user selects mandatory fields and tabs out
    And user fill the field with more than five digits
    And user click on next button
    And Verify that user is not able to register with  more than five digits

 @regression @TC103 @batch1
Scenario: Verify that user is not able to registration with Enter wrong PIN e.g. 00000
    When a practitioner is in the Registration Pin page
    And user selects mandatory fields and tabs out
    And user enter wrong pin
    And user click on next button
    And Verify that user is not able to registration with Enter wrong PIN

@regression @batch2
Scenario: Verify that user is able to registration without PIN 
  When a practitioner is in the Registration Pin page
    And user selects mandatory fields and tabs out
    And user click on next button
    And Verify that user is on registration page
    
    @batchemail
    Scenario: Verify that practioner can register with new pin and verify mail has sent to practitioner
    When a practitioner is in the Registration Pin page
    And user selects mandatory fields and tabs out
    And user get dynamic pin number 
    And user click on next button
    And user fill the form
    #And user fill out the form with all required fields
    #And copy new practioner user from local file
    And user clicks on Create Account
    And verify that the practitioner is created with correct data
    Then verify that mail has sent to practitioner