@practitioner
@TF70

Feature: PatientInsights

Background: Verify that practitioner User is able to login
    Given practitioner is on Login page
    And user enters username and password and clicks Login button
    Then home page is displayed

Scenario: Verify that practitioner is able to navigate to Patients Reports tab on Insights page
    When a practitioner is in the Insights page
    Then verify user is in Patients Reports tab on Insights page


 Scenario: Verify that practitioner is able to navigate to Business Reports tab on Insights page
    When a practitioner is in the Insights page
    And user clicks on Business Reports tab
    Then verify user is in Business Reports tab on Insights page

Scenario: Click on each: sum, C4, C5, C6, C7, C8, C9 and C10 Verify hover-over state
    When a practitioner is in the Insights page
    #Then user click on sum GENERAL POPULATION VS PATIENT DEMOGRAPHIC
     And user click on c4 GENERAL POPULATION VS PATIENT DEMOGRAPHIC
     And user click on c5 GENERAL POPULATION VS PATIENT DEMOGRAPHIC
     And user click on c6 GENERAL POPULATION VS PATIENTs DEMOGRAPHIC
     And user click on c7 GENERAL POPULATIONs VS PATIENT DEMOGRAPHIC
     And user click on c8 GENERAL POPULATION VS PATIENT DEMOGRAPHIC
     And user click on c9 GENERAL POPULATION VS PATIENT DEMOGRAPHIC
     And user click on c10 GENERAL POPULATION VS PATIENT DEMOGRAPHIC 

Scenario: Verify that practitioner is able to apply the filter on insight page
    When a practitioner is in the Insights page
    And practitioner apply the demographic filters
    Then verify that filter has apply

Scenario: Verify that practitioner is able to clear the Filter in insight page
    When a practitioner is in the Insights page
    And practitioner apply the demographic filters
    Then verify that filter has apply
    And practitioner clicks on CLEAR FILTER button
    Then verify filter has clear 