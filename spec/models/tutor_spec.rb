require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Tutor do
  before(:each) do
    @valid_attributes = {
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
    }
  end

  it "should create a new instance given valid attributes" do
    Tutor.create!(@valid_attributes)
  end
end
