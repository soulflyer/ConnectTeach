Feature Administer pages
	In order to administer static pages
	A User with admin priveliges
  Should be able to view and edit static page details
  
	Scenario: User views static page index
		Given I am signed up and confirmed as "email@person.com/password"
		And "email@person.com" has "null" role
		When I sign in as "email@person.com/password"
		And I go to the list pages page
		Then I should not see "Listing pages"
		And I should see "Must be logged in as admin"
		
  Scenario: User with admin privs views static page index
		Given I am signed up and confirmed as "email@person.com/password"
		And "email@person.com" has "admin" role
		When I sign in as "email@person.com/password"
		And I go to the list pages page
		Then I should see "Listing pages"
		
	Scenario: User views a page
	  Given I am signed up and confirmed as "email@person.com/password"
		And "email@person.com" has "null" role
		When I sign in as "email@person.com/password"
		And I go to the home page
		Then I should not see "Edit this page"
		
	Scenario: User with admin privs views a page
    Given I am signed up and confirmed as "email@person.com/password"
		And "email@person.com" has "admin" role
		When I sign in as "email@person.com/password"
		And I go to the home page
		Then I should see "Edit this page"
		