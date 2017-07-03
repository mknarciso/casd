# feature/login.feature
Feature: Login
As a user
I want to fill my email and password
So that I log into the system

Scenario: User logs in succesfuly
Given a valid user
When I go to login page
And I fill in user data
And I press "Log in"
Then I should see "Signed in successfully."

Scenario: User does not log in
Given a valid user
When I go to login page
And I fill in "Email" with "errado@gmail.com"
And I fill in "Password" with "wrong"
And I press "Log in"
Then I should see "Log in"
