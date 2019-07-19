Feature: Appointments

  Background: The practitioner logs in to the portal
    Given a practitioner is on the login page
    When user enters "revboomdoom@dispostable.com"
    Then Dashboard page is displayed

  Scenario: The practitioner can only set an appointment for future time
    Given a practitioner is in the patients page
    # we need test data for the patient name to search
    When a practitioner searches for the patient
    And clicks on the Next Appointment icon
    And clicks on Schedule Test
    And enters wrong time on schedule appointment form
    ## this needs to be better defined for error
    Then error appears on schedule appointment form

  Scenario: As a practitioner I should not see appointments for a patient in calendar if none are scheduled
    Given a practitioner is in the patients page
    # we need test data for the patient name to search
    When a practitioner searches for the patient
    And there are no appointments scheduled for the patient
    And a practitioner clicks the calendar icon from patient record
    Then verify that the Schedule appointment screen displays "You do not have any scheduled appointments"

  Scenario: verify that a practitioner can set appointment
    Given a practitioner is in the patients page
    # we need test data for the patient name to search
    When a practitioner searches for the patient
    And clicks on next appointment icon
    #And clicks on Appointments
    And clicks on Schedule Test
    And enters values on schedule appointment form
    And clicks on Submit button
    And clicks on next appointment icon
    #And clicks on Appointments
    Then verify that appointment is scheduled
    Then clicks on edit appointment
    Then verify all values are showing on edit schedule appointment form

  Scenario: verify that a practitioner can modify appointment
    Given a practitioner is in the patients page
    # we need test data for the patient name to search
    When a practitioner searches for the patient
    And clicks on next appointment icon
    #And clicks on Appointments
    Then clicks on edit appointment
    Then user updates values on schedule appointment form
    Then clicks on Submit button
    And clicks on next appointment icon
    #And clicks on Appointments
    Then clicks on edit appointment
    Then verify all values are showing on edit schedule appointment form

  Scenario: verify that a practitioner can remove appointment
    Given a practitioner is in the patients page
    # we need test data for the patient name to search
    When a practitioner searches for the patient
    And clicks on next appointment icon
    #And clicks on Appointments
    And user removes the appointment
    Then verify that appointment is removed

  Scenario: As a practitioner I should not see appointments on the dashboard if none are scheduled
    When a practitioner is on the dashboard page
    And  there are no appointments scheduled for a practitioner
    Then verify that the Upcoming appointments widget displays "No upcoming appointments"

  Scenario: As a practitioner I should not see appointments on patient record if none are scheduled
    When a practitioner is in the patients page
    Then search for patient name which does not have a scheduled appointment
    And clicks on next appointment icon
    #And  there are no appointments scheduled for the patient
    Then verify that the Next appointment widget displays "You do not have any scheduled appointments"

  Scenario: A practitioner should be able to schedule appointment through plus icon
    When a practitioner is on the dashboard page
     #When clicks on plus icon on dashboard for schedule appointment
    And clicks on Appointment icon on dashboard
    And clicks on Plus icon on view Appointments section
    And enter values on schedule appointment form
    And selects patient on schedule appointment form
    Then clicks on Submit button
    Then verify that user Sheduled appointment

  Scenario: A practitioner should be able to navigate to patient record through the appointment link
    When a practitioner is on the dashboard page
    And there are appointments scheduled for the patient
    And a practitioner clicks the patient name under Upcoming Appointments
    Then verify that the link navigates to the patient record

  Scenario: A practitioner should be able to shedule appointment on view appointment page without select mandatory fields
    Then clicks on Appointment icon on dashboard
    And clicks on Plus icon on view Appointments section
    Then clicks on Submit button
    And verify that user is able to schedule appointment on view appointment page without select mandatory fields
      | field            | message               |
      | Patient          | Patient is required.  |
      | Location         | Location is required. |
      | Reason for Visit | 50 characters left    |

# this may be overlapping with scenario below
  Scenario: A practitioner should be able to cancel appointment
    And clicks on upcoming appointment icon
    #And verify that user is able to view Appointments Page through Eye icon with upcomming appointments on home page
    And clicks on Plus icon on view Appointments section
    And enter values on schedule appointment form
    And user selects patient on schedule appointment form
    Then clicks on Submit button
    And clicks on upcoming appointment icon
    And verify that the appointment is scheduled through the eye button
    And verify that user able to cancel Appointment

  Scenario: A practitioner can create modify and remove appointment
    Given a practitioner is in the patients page
    # we need test data for the patient name to search
    When a practitioner searches for the patient
    And clicks on next appointment icon
    And clicks on Schedule Test
    Then user enter values on schedule appointment form
    Then clicks on Submit button
    And clicks on next appointment icon
    Then verify that appointment is scheduled
    Then clicks on edit appointment
    Then verify all values are showing on edit schedule appointment form
    Then user updates values on schedule appointment form
    Then clicks on Submit button
    And clicks on next appointment icon
    Then clicks on edit appointment
    Then verify all values are showing on edit schedule appointment form
    Then clicks on Submit button
    And clicks on next appointment icon
    And user removes the appointment
    Then verify that appointment is removed

  Scenario: A practitioner can book an appointment
    When a practitioner clicks on patients page
    # we need to get test data in her for the search
    And on next Appointment Icon
    And clicks on Schedule Test Icon
    Then enters values on appointment form
    And clicks on Submit button on appointment form
    And clicks on next appointment icon
    Then verify that appointment has been booked



