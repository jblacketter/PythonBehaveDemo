@practitioner
@TF40

Feature: LearningCenter

Background: Verify that practitioner User is able to login
    Given practitioner is on Login page
    And user enters username and password and clicks Login button
    Then home page is displayed

 Scenario: Verify all the links in Recommended Content
     When a practitioner is in the Learning Center page
     And verify all the links in Recommended Content

  Scenario: Verify search in Resources
    When a practitioner is in the Learning Center page
    When a practioner searches for an existing term in Resources
        | Search Text           | result text                   | Result links visible in page  |
        | Science               | Search Results: 1             | The Science of Revelar        |
        | Radicals              | Search Results: 2             | Free Radicals & Oxidative Stress / Aldehydes & Free Radicals |
    Then the results filter the content to match that search
    And when a practioner searches for text that does not exist 
        | Search Text           | result text        | Result links visible in page |
        | blblbg                | Search Results: 0\nNo results to display. Please check your spelling or try a different search term. | empty results on page |
    Then the results should be 0 with appropriate message

  Scenario: Verify that practitioner able to see Resources section that includes a search and  Recommended Content
     When a practitioner is in the Learning Center page
     And Verify that practitioner able to see Resources section that includes a search and  Recommended Content

  Scenario: Verify that practioner able to see pdf Content
    When a practitioner is in the Learning Center page
    And user click on pdf 
    And Verify that practioner able to see pdf Content 
    