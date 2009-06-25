Feature: Manage Tutors
  In order to create and maintain a list of tutors
  As an administrator  
  I want to create and maintain tutors
  
  Background:
    Given the following user records
     | email            | role  | password | admin |
     | ndiw@test.com  | tutor | ndiw     | false |
     | admin@test.com | tutor | admin    | true  |
 
  
  Scenario: Tutor list
    When I go to the list of tutors
    Then I should see "ndiw"
    And I should see "admin"
  
  Scenario Outline: View tutors private details
    Given I am logged in as "<login_name>" with password "<password>"
    When I visit profile for "<profile>"
    Then I should <action>
    Examples:
     | login_name | profile | password | action                                               |
     | ndiw       | ndiw    | ndiw     | see "ndiw's private details"                         |
     | ndiw       | admin   | ndiw     | see "You can't view another tutor's private details" |
     | admin      | ndiw    | admin    | see "ndiw's private details"                         |


 
  # Scenario Outline: Go to edit page and see tutors private details
  #   Given I am logged in as "<login_name>" with password "<login_name>"
  #   When Visit edit page for "<profile>"
  #   Then I should <action>
  #   Examples:
  #    | login_name | profile | action                        |
  #    | ndiw       | ndiw    | see "ndiw's private details"  |
  #    | ndiw       | admin   | not see "admin's private details" |
  #    | admin      | ndiw    | see "ndiw's private details"  |
  #  
