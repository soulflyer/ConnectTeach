Factory.define :tutor do |t|
  t.given_name "Iain"
  t.family_name "Wood"
  t.given_name_first true
  t.age 50
  t.sequence(:login_name) { |n| "login#{n}"}
  t.admin false
end