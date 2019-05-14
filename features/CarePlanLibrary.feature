@practitioner
@TF66

Feature: CarePlanLibrary

  Background: Verify that practitioner User is able to login
    Given practitioner is on Login page
    And user enters username and password and clicks Login button
    Then home page is displayed

  @regression @TC210 @TC248 @TC194 @TC195 @batch1
  Scenario: As a practitioner I want to assign Care Plan tasks to a patient
    When a practitioner is in the patients page
    And copy patient from local file
    And search for the patient
    And user clicks on Care Plan component
    And creates a new care plan task
      |Category            | Type    | Action   | When is day Successful? | Goal            | Additional details  |
      |Exercise and Fitness| Binary  | exercize |                         | every day       | focus on stretching |
      |Exercise and Fitness| Binary  | exercize |                         | 1 day per week  | focus on stretching |
      #| Numeric | meditate | at least 1 hour         | every day       | relax               |
      #| Numeric | meditate | exactly 1 hour          | every day       | stretch             |
      #| Numeric | meditate | not more than 10 hours  | every day       | stretch             |
      #| Numeric | meditate | at least 6 hours        | 1 day per week  | breathe             |
      #| Numeric | meditate | exactly 1 hour          | 6 days per week | focus               |
      #| Numeric | meditate | not more than 1 hour    | 1 day per week  |                     |
    Then verifies expected text in "This is what your patient will see" field
    And selects Assign
    # adding a new verification for the tasks created here
    Then verifies the tasks assigned to patient are visible in the patient care plan component

  @regression @TC248 @TC193 @batch1
  Scenario: As a practitioner I want to remove tasks assigned to patient
    When a practitioner is in the patients page
    And copy patient from local file
    And search for the patient
    And user clicks on Care Plan component
    And creates a new care plan task
      |Category            | Type    | Action   | When is day Successful? | Goal            | Additional details  |
      |Exercise and Fitness| Binary  | exercize |                         | every day       | focus on stretching |
      |Exercise and Fitness| Binary  | exercize |                         | 1 day per week  | focus on stretching |
    Then verifies expected text in "This is what your patient will see" field
    And selects Assign
    And remove the created task
    Then verifies that the task has been removed

  @regression @batch1
  Scenario: As a practitioner I want to verify required fields for assign Care Plan tasks to a patient
    When a practitioner is in the patients page
    And copy patient from local file
    And search for the patient
    And user clicks on Care Plan component
    Then fills out form with missing required fields validating error messages 

  @BVA @regression @batch1
  Scenario: verify that user cannot create task by providing inaccurate values in day per week field
    When a practitioner is in the patients page
    And copy patient from local file
    And search for the patient
    And user clicks on Care Plan component
    And user enters inaccurate values in the create task form
    |0|
    #|8|

  @regression @TC248 @TC192 @TC214 @batch1
  Scenario: Verify that user can assign task from listed library tasks
     When a practitioner is in the patients page
      And copy patient from local file
      And search for the patient
      And user click on search library button
      And user search task in my care plan search field
      And user assign task
      And Verify that user can assign task from listed library tasks


@regression @TC206 @TC207 @TC211 @batch1
  Scenario: As a practitioner I want to add tasks to my library
    When a practitioner selects Care Plan from the top navigation
    And selects the add task button
    And creates a new care plan libary task
      |Category            | Type    | Action | When is day Successful? | Goal             |
      |Exercise and Fitness| Binary  | 1      |                         | every day        |
      |Diet and Nutrition  | Binary  | eat    |                         | 1 day per week   |
      #| Numeric | Run    | not more than 2 minutes | 5 time a week    |
      #| Numeric | Blip   | exactly 6 hours         | 6 days a week    |
      #| Numeric | Blip   | at least 1 hour         | 1 day a week     |
      #| Numeric | Plorp  | not more than 5 hours   | every day        |
      #| Numeric | Glorp  | exactly 1 hour          | every day        |
      #| Numeric | Glorp  | at least 1 hour         | every day        |
    Then verifies that all created tasks are visible in the libary

  @regression @TC206 @TC211 @TC208 @batch1
  Scenario: As a practitioner I want to delete tasks to my libary
    When a practitioner selects Care Plan from the top navigation
    And selects the add task button
   And creates a new care plan libary task
      |Category            | Type    | Action | When is day Successful? | Goal             |
      |Exercise and Fitness| Binary  | 1      |                         | every day        |
    And deletes the created task
    Then verifies that the task has been deleted

    @regression @batch2
   Scenario: Verify that user is able to Pagination list through pagination 
       When a practitioner selects Care Plan from the top navigation 
       Then user click on next arrow in pagination 
       And verify that user is able to see all pagination icons

 
 #Scenario: As practitioner I want to view tasks assigned to patient
        #When a practitioner is in the patients page
        #Then verify that practitioner able to see task of patients

 
 #Scenario: As practitioner I want to search my task library
        #When a practitioner is in the patients page
        #And practitioner select a patient   
        #And practitioner clicks on libary Btn
        #And user search task in search bar
        #Then verify searched task is shown       
