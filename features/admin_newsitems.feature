Feature Administer newsitems
  In order to administer newsitems
  A User with admin privelidges
  Should be able to view and edit newsitems

  Scenario: User views a newsitem
	  Given I am signed up and confirmed as "email@person.com/password"
		And "email@person.com" has "null" role
		When I sign in as "email@person.com/password"
		And I go to the first newsitem page
		Then I should not see "Edit this page"
		
	Scenario: User with admin privs views a newsitem
    Given I am signed up and confirmed as "email@person.com/password"
		And "email@person.com" has "admin" role
		When I sign in as "email@person.com/password"
		And I go to the first newsitem page
		Then I should see "Edit this page"
	