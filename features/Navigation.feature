@practitioner
@TF72

Feature: Navigation

Background: Verify that Practitioner User is able to login
    Given practitioner is on Login page
    And user enters username and password and clicks Login button
    Then home page is displayed

    Scenario: Verify all the menu links are showing on navigation menu for practitioner
        And verify menu has Dashboard link
        And verify menu has Patients link
        And verify menu has Insights link
        And verify menu has Care Plan link
        And verify menu has Learning Center link
        And verify menu has Global Search box
        And verify menu has Messages link
        And verify menu has Settings link
        #And verify menu has Logout link

    Scenario: Verify that user able to see Indicates the number of new unread messages
        When a practitioner is on the dashboard page
        And Verify that user able to see Indicates the number of new unread messages