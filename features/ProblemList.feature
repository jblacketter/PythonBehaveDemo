@practitioner
@TF26

Feature: ProblemList

Background: Verify that practitioner User is able to login
    Given practitioner is on Login page
    And user enters username and password and clicks Login button
    Then home page is displayed

@regression @TC89 @TC235 @TC60 @TC139 @batch1
Scenario: Verify that a practitioner can add problem to the problem list
    When a practitioner is in the patients page
    And copy patient from local file
    And search for the patient
    And user clicks on Add problem
    And user searchs for "Typhoid and paratyphoid fevers" in problem search 
    And user clicks on Select btn in problem search
    And verify that problem add into the problem list
    
@regression @TC62 @batch1
Scenario: Verify that a practitioner can resolve problem from the problem list
    When a practitioner is in the patients page
    And copy patient from local file
    #And practitioner serach the patient and select
    And search for the patient
    And user clicks on first resolve button in the problem list
    And verify that problem has been resolved

 @regression @TC61 @batch1
Scenario: Verify that practitioner is able to reassign problem
    When a practitioner is in the patients page
    And copy patient from local file
    And search for the patient
    And user again reassign problem
    And Verify that practitioner is able to reassign problem


