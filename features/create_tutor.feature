Feature Create Tutor
	In order to create a tutor
	A user
	Should be able to create a tutor

	Scenario: User is not signed in and should not see edit tutor page
		And I go to the edit tutor 1 page
		Then I should see "Please login first"		
	
	Scenario: User is signed in should see link to edit tutor page
		Given I am signed up and confirmed as "email@person.com/password"
		When I sign in as "email@person.com/password"
		Then I should see "Details"
	
	Scenario: User is signed in and goes to create tutor page
		Given I am signed up and confirmed as "email@person.com/password"
	  When I sign in as "email@person.com/password"
		And I go to the create tutor page
		Then I should see "Tutor details"
			
	Scenario: User already has a tutor and goes to edit tutor
		Given I am signed up and confirmed as "email@person.com/password"
		And I have already created a tutor as "email@person.com"
	  When I sign in as "email@person.com/password"
		And I go to the create tutor page
		Then I should see "email@person.com's private details"
		
	