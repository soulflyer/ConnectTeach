require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tutors/show.html.erb" do
  include TutorsHelper
  before(:each) do
    assigns[:tutor] = @tutor = stub_model(Tutor,
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

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ experience/)
    response.should have_text(/value\ for\ qualifications/)
    response.should have_text(/value\ for\ course_experience/)
    response.should have_text(/value\ for\ textbook_experience/)
    response.should have_text(/value\ for\ national_knowledge/)
    response.should have_text(/1/)
    response.should have_text(/1/)
    response.should have_text(/value\ for\ sex/)
    response.should have_text(/value\ for\ flavour/)
    response.should have_text(/value\ for\ given_name/)
    response.should have_text(/value\ for\ family_name/)
    response.should have_text(/false/)
  end
end

