require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tutors/index.html.erb" do
  include TutorsHelper
  
  before(:each) do
    assigns[:tutors] = [
      stub_model(Tutor,
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
      ),
      stub_model(Tutor,
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
    ]
  end

  it "renders a list of tutors" do
    render
    response.should have_tag("tr>td", "value for experience".to_s, 2)
    response.should have_tag("tr>td", "value for qualifications".to_s, 2)
    response.should have_tag("tr>td", "value for course_experience".to_s, 2)
    response.should have_tag("tr>td", "value for textbook_experience".to_s, 2)
    response.should have_tag("tr>td", "value for national_knowledge".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", "value for sex".to_s, 2)
    response.should have_tag("tr>td", "value for flavour".to_s, 2)
    response.should have_tag("tr>td", "value for given_name".to_s, 2)
    response.should have_tag("tr>td", "value for family_name".to_s, 2)
    response.should have_tag("tr>td", false.to_s, 2)
  end
end

