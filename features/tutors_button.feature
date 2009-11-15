Feature Click Tutor Button
  In order to access correct page
  A user should see different pages depending on their role

  Scenario: User is not signed in and clicks on tutors
    Given I am on the home page
    When I follow "Tutors"
    Then I should be on the sign in page

  Scenario: User is signed in and clicks on tutors
    Given I am signed up and confirmed as "email@person.com/password"
		And "email@person.com" has "null" role
		And I have already created a tutor as "email@person.com"
		And I sign in as "email@person.com/password"
    And I am on the home page
    When I follow "Tutors"
    Then I should be on the edit tutor 1 page

  Scenario: User is signed in as an admin and clicks on tutors
    Given I am signed up and confirmed as "email@person.com/password"
		And "email@person.com" has "admin" role
		And I sign in as "email@person.com/password"	
    And I am on the home page
    When I follow "Tutors"
    Then I should be on the list tutors page
