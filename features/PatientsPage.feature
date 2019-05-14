@practitioner
@TF11

Feature: PatientsPage

Background: Verify that practitioner User is able to login
    Given practitioner is on Login page
    And user enters username and password and clicks Login button
    Then home page is displayed

@regression @TC150 @batch2
Scenario: Verify some fields are manadatory on create patient record form
    When user clicks on Create Record
    And user clicks on Create button
    And the appropriate error message displays on create patient record form
    | field          | message                      |
    | First name     | First name is required.      |
    | Last name      | Last name is required.       |
    | Sex            | Sex is required.             | 
    | Date of Birth  | Birthdate is required.       | 
    
@practitioner @testdata @TC59 @TC187 @TC94 @TC92 @TC118
Scenario: Verify that practitioner is able to create patient record
    When user clicks on Create Record
    Then user enter values on create record form
    And user clicks on Create button
    Then verify patient record created
    Then user clicks on View Patient Record
    And user clicks on Edit Patient Record
    Then verify all values are showing on edit patient record form

@regression @TC94 @TC25 @TC95 @TC116 @batch1
Scenario: Verify that practitioner is able to edit patient record
    When a practitioner is in the patients page
    And copy patient from local file
    And search for the patient
    And user clicks on Edit Patient Record
    Then user updates patient details
    And user clicks on Submit
    Then verify patient record updated
    

@inprogress @TC187 @TC94 @TC92 @batch1
#Scenario: Verify that a practitioner can send invitation from patient record
    #When user clicks on Send invitation from patient record
    #And user enter values on send invitation form
    #And user clicks on Send button on send invitation form
    #Then Verify that an invitation Sent
 
 @regression @TC94 @batch2
 Scenario: verify that practitioner can search patient by Patients of my location
   When a practitioner is in the patients page
   Then user select as a my location 
   And copy patient from local file
   And search for the patient
   And user clicks on Edit Patient Record
   Then user updates patient details
   And user clicks on Submit
   Then verify patient record updated

@inprogress @TC94
Scenario: verify that practitioner can clear filters
   When a practitioner is in the patients page
    And copy patient from local file
    And search the patient 
    #And verify that practitioner can clear filters

@regression  @TC185 @batch1
Scenario: verify that user is able to see pagination list and when user is on first pagination page then should be not able to see previous arrow in pagination on patient page  
   When a practitioner is in the patients page
   And verify that user is able to see all pagination icons
   Then verify that when user is on first pagination page then previous arrow should be disabled in pagination

@regression @TC120 @batch2
Scenario: Verify practitioner Current Problems widget
    When a practitioner is in the patients page
    And practitioner select a patient
    And user clicks on current problem icon on patient page
    Then verify user able to see problem list

@pending @TC212
Scenario: Verify that practitioner able to save Current Problems with negative cases

@regression @batch2
Scenario: practitioner is able to filter patient by age,sex,test data in patient page 
   When a practitioner is in the patients page
   And practitioner click on sex icon in patient page
   Then verify the result 

@regression
Scenario: Verify that practitioner is able to see REGISTER BREATH TEST page
   When a practitioner is in the patients page
   And practitioner serach the patient and select
   And practitioner click on REGISTER BREATH TEST button
   Then verify that REGISTER BREATH TEST has shown

@regression
Scenario: Verify that practitioner is not able to REGISTER BREATH TEST in negative case
   When a practitioner is in the patients page
   And practitioner serach the patient and select
   And practitioner click on REGISTER BREATH TEST button
   Then verify that REGISTER BREATH TEST has shown
   #Then fill the required filed in REGISTER BREATH TEST form
   Then verify that practitioner is not bale to click Register sample button without filling the form
