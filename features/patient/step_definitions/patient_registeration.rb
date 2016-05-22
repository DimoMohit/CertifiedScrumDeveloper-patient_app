patient=Patient.new
Given(/^patient has entered his email address as "([^"]*)" and password as "([^"]*)"$/) do |email, password|
  # pending # Write code here that turns the phrase above into concrete actions
  patient.email = email
  patient.password = password
  patient.valid?
end

When(/^click on register$/) do
  # pending # Write code here that turns the phrase above into concrete actions
  # assert( patient.save == false, message )
end

When(/^click on register and password is "([^"]*)"$/) do |arg1|
  # pending # Write code here that turns the phrase above into concrete actions
  assert( patient.save == false, "Account not created" )
end

Then(/^System should register him and display "([^"]*)"$/) do |arg1|
  # pending # Write code here that turns the phrase above into concrete actions
  patient.save!
end

Then(/^System should not register him and display "([^"]*)"$/) do |arg1|
  # pending # Write code here that turns the phrase above into concrete actions
  
end

