Feature: Appointments

  Background: Verify that practitioner user is able to login
    Given The practitioner is on the Login page
    When The user enters "revboomdoom@dispostable.com"
    Then The Dashboard page is displayed

  @regression
  Scenario: Verify that a practitioner can only set an appointment for future time
    When a practitioner is in the patients page
    And copy patient from local file
    And search for the patient
    And user click on next appointment icon
    #And user clicks on Appointments
    And user clicks on Schedule Test
    Then user enters wrong time on schedule appointment form
    And verify that getting error on schedule appointment form

  @regression
  Scenario: As a practitioner I should not see appointments for a patient in calendar if none are scheduled
    When a practitioner is in the patients page
    And copy patient from local file
    And search for the patient
    And there are no appointments scheduled for the patient
    And the practitioner clicks the calendar icon from patient record
    Then verify that the Schedule appointment screen displays "You do not have any scheduled appointments"

  @regression
  Scenario: Verify that a practitioner can set appointment
    When a practitioner is in the patients page
    And copy patient from local file
    And search for the patient
    And user click on next appointment icon
    #And user clicks on Appointments
    And user clicks on Schedule Test
    Then user enter values on schedule appointment form
    Then user clicks on Submit button
    And user click on next appointment icon
    #And user clicks on Appointments
    Then verify that appointment is scheduled
    Then user clicks on edit appointment
    Then verify all values are showing on edit schedule appointment form

  @regression
  Scenario: Verify that a practitioner can modify appointment
    When a practitioner is in the patients page
    And copy patient from local file
    And search for the patient
    And user click on next appointment icon
    #And user clicks on Appointments
    Then user clicks on edit appointment
    Then user updates values on schedule appointment form
    Then user clicks on Submit button
    And user click on next appointment icon
    #And user clicks on Appointments
    Then user clicks on edit appointment
    Then verify all values are showing on edit schedule appointment form

  @regression 1
  Scenario: Verify that a practitioner can remove appointment
    When a practitioner is in the patients page
    And copy patient from local file
    And search for the patient
    And user click on next appointment icon
    #And user clicks on Appointments
    And user removes the appointment
    Then verify that appointment is removed


  Scenario: As a practitioner I should not see appointments on the dashboard if none are scheduled
    When a practitioner is on the dashboard page
    And  there are no appointments scheduled for the practitioner
    Then verify that the Upcoming appointments widget displays "No upcoming appointments"

  @regression
  Scenario: As a practitioner I should not see appointments on patient record if none are scheduled
    When a practitioner is in the patients page
    And search patient name which have not scheduled appointment
    And user click on next appointment icon
    #And  there are no appointments scheduled for the patient
    Then verify that the Next appointment widget displays "You do not have any scheduled appointments"

  @regression
  Scenario: Verify that user is able to shedule appointment through plus icon
    When a practitioner is on the dashboard page
     #When user click on plus icon on dashboard for shedule appointment
    Then user click on Appointment icon on dashboard
    And user clicks on Plus icon on view Appointments section
    And enter values on schedule appointment form
    And user selects patient on schedule appointment form
    Then user clicks on Submit button
    Then verify that user Sheduled appointment

  @regression
  Scenario: As a practitioner I should be able to navigate to patient record through the appointment link
    When a practitioner is on the dashboard page
    And there are appointments scheduled for the patient
    And the practitioner clicks the patient name under Upcoming Appointments
    Then verify that the link navigates to the patient record

  @regression
  Scenario: Verify that user is able to shedule appointment on view appointment page without select mandatory fields
    Then user click on Appointment icon on dashboard
    And user clicks on Plus icon on view Appointments section
    Then user clicks on Submit button
    And Verify that user is able to shedule appointment on view appointment page without select mandatory fields
      | field            | message               |
      | Patient          | Patient is required.  |
      | Location         | Location is required. |
      | Reason for Visit | 50 characters left    |

  @regression
  Scenario: Verify that user is able to cancel appointment
    And user click on upcoming appointment icon
    #And Verify that user is able to view Appointments Page through Eye icon with upcomming appointments on home page
    And user clicks on Plus icon on view Appointments section
    And enter values on schedule appointment form
    And user selects patient on schedule appointment form
    Then user clicks on Submit button
    And user click on upcoming appointment icon
    And Verify that the appointment is scheduled through the eye button
    And verify that user able to cancel Appointment

  Scenario: Verify that practitioner can set appointment,modify appointment and remove appointment
    When a practitioner is in the patients page
    And copy patient from local file
    And search for the patient
    And user click on next appointment icon
    And user clicks on Schedule Test
    Then user enter values on schedule appointment form
    Then user clicks on Submit button
    And user click on next appointment icon
    Then verify that appointment is scheduled
    Then user clicks on edit appointment
    Then verify all values are showing on edit schedule appointment form
    Then user updates values on schedule appointment form
    Then user clicks on Submit button
    And user click on next appointment icon
    Then user clicks on edit appointment
    Then verify all values are showing on edit schedule appointment form
    Then user clicks on Submit button
    And user click on next appointment icon
    And user removes the appointment
    Then verify that appointment is removed

  Scenario: Verify that a practitioner can book an appointment
    When a practitioner clicks on patients page
    And copy patient data and search for the patient
    And user click on next Appointment Icon
    And user clicks on Schedule Test Icon
    Then user enter values on appointment form
    Then user clicks on Submit button on appointment form
    And user click on next appointment icon
    And Verify that appointment has been booked
    Then verify that appointment is scheduled



