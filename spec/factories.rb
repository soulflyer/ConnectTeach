Factory.define :tutor do |t|
  t.givenname "Iain"
  t.familyname "Wood"
  t.givennamefirst true
  t.age 50
  t.sequence(:login_name) { |n| "login#{n}"}
end