Feature: Manage Tutors
  In order to create and maintain a list of tutors
  As an administrator	
	I want to create and maintain tutors
	
	Background:
		Given the following tutor records
		 | login_name | password | admin |
		 | ndiw       | ndiw     | false |
		 | admin      | admin    | true  |

	
	Scenario: Tutor list
		When I go to the list of tutors
		Then I should see "ndiw"
		And I should see "admin"
	
	Scenario Outline: View tutors private details
		Given I am logged in as "<login_name>" with password "<login_name>"
		When I visit profile for "<profile>"
		Then I should <action>
		Examples:
		 | login_name | profile | action                                                   |
		 | ndiw       | ndiw    | see "Edit"                                               |
		 | ndiw       | admin   | see "You can't view another tutor's private details"     |
		 | admin      | ndiw    | not see "You can't view another tutor's private details" |

