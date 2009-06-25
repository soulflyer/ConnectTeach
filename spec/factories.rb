Factory.define :user do |t|
  t.given_name "Iain"
  t.family_name "Wood"
  t.given_name_first true
  t.email_confirmed true
  # t.sequence(:login_name) { |n| "login#{n}"}
end
