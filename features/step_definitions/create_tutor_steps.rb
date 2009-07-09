Given /^I have already created a tutor as "([^\"]*)"$/ do |email|
  user = User.find_by_email(email)
  user.tutor = Factory(:tutor, :experience => "#{email}'s private details")
  user.save
end

Given /^"([^\"]*)" has admin privs$/ do |email|
  user = User.find_by_email(email)
  user.role = "admin"
  user.save
end

Given /^"([^\"]*)" has "([^\"]*)" role$/ do |email, role|
  user = User.find_by_email(email)
  user.role = role
  user.save
end