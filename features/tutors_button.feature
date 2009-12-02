Feature Click Tutor Button
  In order to access correct page
  A user should see different buttons on the tutor page depending on their role

  Scenario: User is not signed in and clicks on tutors
    Given I am on the tutor info page
    Then I should see "Login"
    And I should not see "Tutors" within "#text .button"
    And I should not see "Profile" within "#text .button"

  Scenario: User is signed in and clicks on tutors
    Given I am signed up and confirmed as "email@person.com/password"
		And "email@person.com" has "null" role
		And I sign in as "email@person.com/password"
    And I am on the tutor info page
    Then I should not see "Login"
    And I should not see "Tutors" within "#text .button"
    And I should see "Profile" within "#text .button"

  Scenario: User is signed in as an admin and clicks on tutors
    Given I am signed up and confirmed as "email@person.com/password"
		And "email@person.com" has "admin" role
		And I sign in as "email@person.com/password"	
    And I am on the tutor info page
    Then I should not see "Login"
    And I should see "Edit this page" within "#text .button"
    And I should see "Profile" within "#button1"
    And I should see "Tutors" within "#button2"
