Feature Administer tutors
  In order to administer tutors
  A User with admin privelidges
  Should be able to view and edit tutor details

  Scenario: User views tutor index
		Given I am signed up and confirmed as "email@person.com/password"
		And "email@person.com" has "null" role
		When I sign in as "email@person.com/password"
		And I go to the list tutors page
		Then I should not see "Listing tutors"
		And I should see "Must be admin"

  Scenario: User with admin privs views tutor index
		Given I am signed up and confirmed as "email@person.com/password"
		And "email@person.com" has "admin" role
		When I sign in as "email@person.com/password"
		And I go to the list tutors page
		Then I should see "Listing tutors"
		
    
