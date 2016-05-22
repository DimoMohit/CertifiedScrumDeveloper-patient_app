Feature: Patient registeration and login
As a patient 
I should be able to login to platform
In order to view my account and have privacy

Scenario: Account registeration
Given patient has entered his email address as "jeff@gmail.com" and password as "abacus123!@#"
When click on register
Then System should register him and display "Welcome to Patient app"

Scenario: Check all fields before registeration
Given patient has entered his email address as "jeff@gmail.com" and password as ""
When click on register and password is ""
Then System should not register him and display "Please fill all required fields"

Scenario: Account Login
Given patient has entered his email address as "jeff@gmail.com"  password as "abacus123!@#"
When click on login
Then System display "Welcome back"