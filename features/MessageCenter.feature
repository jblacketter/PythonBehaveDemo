@practitioner
@TF43

Feature: MessageCenter

Background: Verify that practitioner User is able to login
    Given practitioner is on Login page
    And user enters username and password and clicks Login button
    Then home page is displayed

@regression @TC54 @TC29 @batch2
Scenario: Verify some fields are manadatory on Create message form
    When a practitioner is in the Message Center page
    And user clicks on Compose
    And user clicks send button on create message form
    And the appropriate error message displays on Create message form
    # | field      | message                 |
    # | Recipient  | Recipient is required.  |
    # | Subject    | Subject is required.    |
    # | Message    | 500 characters left     |
   # | Message    | Message is required.    | 

@regression @TC8 @TC197 @batch1
Scenario: Verify that a practitioner can send message
    And copy patient from local file
    When a practitioner is in the Message Center page
    And user clicks on Compose
    And user enter message details on create message form
    And user clicks send button on create message form
    And user clicks on Sent tab
    Then verify that message is sent

@regression @TC54 @TC42 @batch1
Scenario: Verify that a practitioner can see sent messages
    And copy patient from local file
    When a practitioner is in the Message Center page
    And user clicks on Sent tab

@regression @TC54 @TC42 @batch1
Scenario: Verify that a practitioner can see draft messages
    When a practitioner is in the Message Center page
    And user clicks on Draft tab

@regression @TC54 @TC42 @batch1
Scenario: Verify that a practitioner can see starred messages
    When a practitioner is in the Message Center page
    And user clicks on Starred tab

@regression @TC54 @TC42 @TC199 @batch1
Scenario: Verify that a practitioner can see trash messages
    When a practitioner is in the Message Center page
    And user clicks on Trash tab

@regression @batch1
Scenario: verify that a practitioner can save message as a draft
    And copy patient from local file
    When a practitioner is in the Message Center page
    And user clicks on Compose
    And user enter message details on create message form
    And practitioner clicks save as draft button 
    And user clicks on Draft tab
    And user clicks on Draft tab
    Then verfiy that messages is saved in Draft section

@regression @TC15 @batch1
Scenario: Verify that a practitioner can delete messgaes
   When a practitioner is in the Message Center page
   And practitioner selects a message
   And practitioner clicks on trash icon
   And practitioner confirms deletion
   #And user clicks on Trash tab
   #Then verfiy that message added to the Trash section
   Then verify that message is deleted from inbox section

@regression @TC199 @TC191 @batch1
Scenario: verify that a practitioner can restore from trash
    When a practitioner is in the Message Center page
    And user clicks on Trash tab
    #And patient selects a message
    And practitioner selects a message
    And practitioner clicks restore button
    Then verfiy that message removed from the Trash section

 @regression @TC191 @batch1
Scenario: verify that a practitioner can delete from trash
    When a practitioner is in the Message Center page
    And user clicks on Trash tab
    #And patient selects a message
    And practitioner selects a message
    And practitioner click empty trash button
    Then verfiy that message removed from the Trash section

@regression @TC14 @batch1
Scenario: verify that a practitioner can add & remove star
    When a practitioner is in the Message Center page
    And practitioner clicks star
    And practitioner removes star

 @regression @TC31 @batch1
 Scenario: verify that a practitioner can nevigate to older and newer messages
     When a practitioner is in the Message Center page
     And practitioner clicks on older button
     And practitioner clicks on newer button

@regression @batch1
Scenario: verify that practitioner can select all
    When a practitioner is in the Message Center page
    And practitioner clicks Select All

@regression @batch1 @inprogress
Scenario: verify that a practitioner can cancel delete message
    When a practitioner is in the Message Center page
    And practitioner selects a message
    And practitioner clicks on trash icon
    And practitioner cancels deletion
    Then verfiy that message present in inbox
    #Then verfiy that message not removed from the Trash section

@regression @TC54 @batch1
Scenario: verify that practitioner can search sent messages in sent box   
    When a practitioner is in the Message Center page
    And user clicks on Compose
    And user enter message details on create message form
    And user clicks send button on create message form
    And user clicks on Sent tab
    And verify that practitioner can search sent messages in sent box

@regression @TC12 @batch1
Scenario: verify that practitioner can send a saved draft message
    And copy patient from local file
    When a practitioner is in the Message Center page
    And user clicks on Compose
    And user enter message details on create message form
    And practitioner clicks save as draft button 
    # Then verfiy that messages is saved in Draft section  
    And user click on draft tab
    And serach saved draft message 
    Then verify that practitioner can send a saved draft message 
    And user clicks on Sent tab
    And verify that practitioner can search sent messages in sent box

@regression @TC16 @batch2
Scenario: verify that practitioner can search messages in inbox
    When a practitioner is in the Message Center page
    And practitioner search message in inbox by Subject
    |Subject                |
    |Appointment Requested  |
    #|You have invited       |
    #|Requested Appointment |
    #|Subject Test          |

#@pending @TC197
#Scenario: Create record without email and then send message to patient without account    

 #@regression @TC10 @batch1
 #Scenario: Verify that user is able to send message using message formating in message fields with italic format
     #And copy patient from local file
     #When a practitioner is in the Message Center page
     #And user clicks on Compose
      #And user click on italic format in iframe
     #And user enter message details on create message form
     #And user clicks send button on create message form
     #And user clicks on Sent tab
     #Then verify that message is sent

# @regression @TC10 @batch1
# Scenario: Verify that user is able to send message using message formating in message fields with Bold format
#     And copy patient from local file
#     When a practitioner is in the Message Center page
#     And user clicks on Compose
#     And user click on bold format icon in iframe
#     And user enter message details on create message form
#     And user clicks send button on create message form
#     And user clicks on Sent tab
#     Then verify that message is sent    


@regression @TC198 @batch1
Scenario: Verify that practitioner doesn't see reply button on revelar system message
        When a practitioner is in the Message Center page
        And user select revelar system message 
        Then verify that reply button is not showing 
    

 @regression @batch1
 Scenario: Verify that user is able to see pagination option on Message center page
    When a practitioner is in the Message Center page
    Then user click on next arrow in pagination  
    And verify that user is able to see pagination previous and next arrow on Message center page

 @regression @batch1
 Scenario: verify that when user is on first pagination page then should be not able to see previous arrow in pagination on Message center page  
    When a practitioner is in the Message Center page
    Then verify that when user is on first pagination page then should be not able to see previous arrow in pagination on Message center page    

