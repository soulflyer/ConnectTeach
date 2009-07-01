Given /^the following (.+) records?$/ do |factory, table|
  table.hashes.each do |hash|
    detail=Factory(:detail)
    if hash["detail"]
      hash["detail"].each do |key, value|
        detail[key] = value
      end
    end
    # hash["detail.experience"] = hash["email"] + "'s private details"
    hash["detail"] = detail
    Factory(factory, hash) 
  end
end
 
Given /^I am logged in as "([^\"]*)" with password "([^\"]*)"$/ do |login_name, password|
  visit sign_in_url
  fill_in "email", :with => login_name
  fill_in "password", :with => password
  click_button "Sign in"
end


When /^I visit profile for "([^\"]*)"$/ do |login_name|
  tutor = User.find_by_email!(login_name)
  visit tutor_url(tutor) 
end
 
When /^Visit edit page for "([^\"]*)"$/ do |login_name|
  tutor = User.find_by_email!(login_name)
  visit edit_tutor_url(tutor)
end
 
When /^I edit profile for "([^\"]*)"$/ do |login_name|
  tutor = Tutor.find_by_login_name!(login_name)
  visit edit_tutor_url(tutor)
  fill_in "age", :with => 100
  click_button "save"
end
