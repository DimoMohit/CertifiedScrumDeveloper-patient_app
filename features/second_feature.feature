Feature: Hello Cucumber
As a user
I want to be calculate ata score
So that they have a ata score

Scenario: User ata calculation
Given user go to the homepage and enter first number as "1" and second number as "2" and select the operator as "Add"
When click on "Calculate"
Then he should get result as "3"