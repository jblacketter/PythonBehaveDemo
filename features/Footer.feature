@practitioner
@TF59

Feature: Footer

  Background: Verify that practitioner User is able to login
    Given practitioner is on Login page
    And user enters username and password and clicks Login button
    Then home page is displayed

  Scenario: Verify that user is able to see Footer
   When a practitioner is on the dashboard page
   And verify View practitioner Footer link

  Scenario: Verify that user is able to see Revelar Customer Support page
    And user click on Customer Support link
    And verify that user is able to see Revelar Customer Support page

  Scenario: Verify some fields are manadatory on ask a questions form
    And user click on Customer Support link
    And user click on Ask questions button
    Then user click on submit question
    And the appropriate error message displays on ask a questions form
    | field                    | message                  |
    | Country                  | This field is required.  |
    | What's your question?    | This field is required.  |
    | Select a category        | This field is required.  |
    

  Scenario: Verify that patient is able to Ask a question from Practitioner Support component
    And user click on Customer Support link
    And user click on Ask questions button
    And fill out the form with all required details
    Then user click on submit question
    And user click on ok button
    And Verify that patient is able to Ask a question from Practitioner Support component

 Scenario: Verify Practitioner FAQ
    When a practitioner is on the dashboard page
    And user click on Customer Support link
    #And user click on suport link
    And user click on first collapse up arrow in FAQ section
    And user click on second collapse Down arrow in FAQ section 
    And verify Practitioner FAQ 

