Feature: Home page

	Scenario: Viewing products on homepage
		Given there's a product named "Skoda Fabia" with "Best car ever" description
		When I am on the homepage
		Then I should see the "Skoda Fabia" product

	Scenario: Viewing caterories
		Given there's category named "Cars"
		When I am on the homepage
		Then I should see the "Cars" category

	Scenario: Facebook Login
		When I am on the homepage
		Then I should see the "Facebook" button

	Scenario: Google Login
		When I am on the homepage
		Then I should see the "oogle" button
