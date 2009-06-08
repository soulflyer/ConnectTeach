Given /^the following (.+) records?$/ do |factory, table|
  table.hashes.each do |hash|
    Factory(factory, hash) 
  end
end

Given /^I am logged in as "([^\"]*)" with password "([^\"]*)"$/ do |login_name, password|
  visit login_url
  fill_in "name", :with => login_name
  fill_in "password", :with => password
  click_button "login"
end

When /^I visit profile for "([^\"]*)"$/ do |login_name|
  tutor = Tutor.find_by_login_name!(login_name)
  visit tutor_url(tutor) 
end