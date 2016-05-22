Feature: Prior Visit History
As a patient 
I would like to input or upload my visits to the doctor
In order to keep my history updated

Scenario: Success message
Given patient has entered all correct data
When click on submit
Then System display "Record created"

Scenario: No duplicate data
Given patient has entered all correct data
And patient is trying to add the same record again
When click on submit
Then System display "Duplicate record"

Scenario: Mandatory fields check
Given patient has not entered all data
When click on submit
Then System display "Please fill in highlighted fields"
