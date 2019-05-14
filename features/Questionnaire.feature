@practitioner
@TF74

Feature: Questionnaire

Background: Verify that practitioner User is able to login
    Given practitioner is on Login page
    And user enters username and password and clicks Login button
    Then home page is displayed
    
 @TC244 @batch2
Scenario: verify that user is able to create Questionnaire without fill the form details
    When a practitioner is in the patients page
    And copy patient from local file
    And search for the patient
    And user clicks on the add button to Begin the Questionnaire
    And user click on next button without fill form details
    And verify that user is able to create Questionnaire without fill the form details

 @TC242 @batch1
Scenario: Verify that the practitioner can complete a new Questionnaire
    When user clicks on Create Record
    Then user enter values on create record form
    And user clicks on Create button
    Then verify patient record created
    Then user clicks on View Patient Record
    And user clicks on the add button to Begin the Questionnaire
    Then user fills out the form fields
    | section                                                               | value             | 
    | 1. Please select all that apply.                                      | None              |
    | 2. What is your height?                                               | 100               |
    | 3. What is your current weight?                                       | 100               | 
    | 4. What is your waist size?                                           | 100               | 
    | 5. In general, how would you rate your overall health?                | Good              | 
    | 6. What is your blood type?                                           | I don't know      | 
    | 7. About how many alcoholic drinks do you consume each week?          | 1-4               |
    | 8. If you do consume alcoholic drinks, what do you typically drink?   | Beer              |
    | 9. Do you currently smoke cigarettes?                                 |  No, not at all.  |  
    | 10. Have you been a daily tobacco user in the past?                   | No                | 
    | 11. Do you currently use smokeless tobacco?                           | No, not at all.   |                        
    | 12. In the past, have you used smokeless tobacco?                     | No                | 
    | 13. Does anyone in your household currently smoke cigarettes?         | No                | 
    | 14. Does your work environment expose you to second-hand smoke?       | Yes               | 
    | 15. How often do you use sunscreen while out in the sun?              | Always            | 
    | 16. About how many times in the average week do you engage in 30 minutes of light activity        | 1 |          
    | 17. About how many times in the average week do you engage in 30 minutes of moderate activity     | 2 |             
    | 18. About how many times in the average week do you engage in 30 minutes of strenuous activity    | 2 |             
    | 19. Please tell us what supplements you take.                                           | I do not take supplements | 
    | 20. Do you follow any of the these dietary restrictions?                                          | Vegan |
    | 21. About how many servings of vegetables do you eat each day?                                    | None |
    | 22. About how many servings of fruit do you eat each day?                                         | None |
    | 23. About how often do you eat fast food?                                                         | Never |
    | 24. About how often do you eat red meat?                                                          | Never |
    | 25. How many glasses of water do you drink a day?                                                 | 1 |
    | 26. How many cups of coffee do you drink per day?                                                 | 1 |
    | 27. How many cups of green tea do you drink per day?                                              | 0 |
    | 28. In a typical week, how often do you feel stressed?                                            | Never |
    | 29. In general, how would you rate your overall mental or emotional health?                       | Good |
    | 30. How many hours do you sleep each night?                                                       | 4 or fewer hours |
    | 31. Please list any prescriptive medications that you currently take.                             | None |
    | 32. Please list any over-the-counter medications that you currently take.                         | None |
    | 33. Please select any health conditions that apply to members of your immediate family            | None |
    | 34. Please select any health issues that you are currently experiencing.                          | None |
    | 35. Please select any health issues that you experienced in the past.                             | None |
    And user clicks on Submit on Begin Questionnaire form
    And verify user completed Questionnaire

 @TC245 @batch1
Scenario: Verify that the practitioner can view Historical Questionnaire
    When a practitioner is in the patients page
    And copy patient from local file
    And search for the patient
    And user selects View to view a Historical Questionnaire

@batch2
Scenario: Verify that practitioner can skip steps on Questionnaire
    When a practitioner is in the patients page
    And copy patient from local file
    And search for the patient
    And user clicks on start button for begin Questionnaire
    #And user clicks on start button to Begin the Questionnaire
    And user skips steps on Questionnaire
    And user clicks on cross icon to close Questionnaire
    And user clicks on dont save button

 @TC243 @batch2
Scenario: Verify that user fill five Questionnaire on patient portal and then go on practitioner portal then resume the Questionnaire
    When a practitioner is in the patients page
    And copy patient from local file
    And search for the patient
    And user clicks on start button for begin Questionnaire
    And user fill five Questionnaire on patient portal
    And user clicks on cross icon to close Questionnaire
    And user click on save button on questionnaire Page
    And user click on resume button on questionnaire Page
    Then verify that user is able to resume questionnaire page



    
#@pending @TC239
#Scenario: Verify that practitioner click the resume button again verify answers




