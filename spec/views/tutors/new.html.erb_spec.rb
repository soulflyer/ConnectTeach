require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tutors/new.html.erb" do
  include TutorsHelper
  
  before(:each) do
    assigns[:tutor] = stub_model(Tutor,
      :new_record? => true,
      :experience => "value for experience",
      :qualifications => "value for qualifications",
      :course_experience => "value for course_experience",
      :textbook_experience => "value for textbook_experience",
      :national_knowledge => "value for national_knowledge",
      :age => 1,
      :phone => 1,
      :sex => "value for sex",
      :flavour => "value for flavour",
      :given_name => "value for given_name",
      :family_name => "value for family_name",
      :given_name_first => false
    )
  end

  it "renders new tutor form" do
    render
    
    response.should have_tag("form[action=?][method=post]", tutors_path) do
      with_tag("textarea#tutor_experience[name=?]", "tutor[experience]")
      with_tag("textarea#tutor_qualifications[name=?]", "tutor[qualifications]")
      with_tag("textarea#tutor_course_experience[name=?]", "tutor[course_experience]")
      with_tag("textarea#tutor_textbook_experience[name=?]", "tutor[textbook_experience]")
      with_tag("textarea#tutor_national_knowledge[name=?]", "tutor[national_knowledge]")
      with_tag("input#tutor_age[name=?]", "tutor[age]")
      with_tag("input#tutor_phone[name=?]", "tutor[phone]")
      with_tag("input#tutor_sex[name=?]", "tutor[sex]")
      with_tag("input#tutor_flavour[name=?]", "tutor[flavour]")
      with_tag("input#tutor_given_name[name=?]", "tutor[given_name]")
      with_tag("input#tutor_family_name[name=?]", "tutor[family_name]")
      with_tag("input#tutor_given_name_first[name=?]", "tutor[given_name_first]")
    end
  end
end


