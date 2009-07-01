require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Detail do
  before(:each) do
    @valid_attributes = {
      :experience => "value for experience",
      :qualifications => "value for qualifications",
      :course_experience => "value for course_experience",
      :textbook_experience => "value for textbook_experience",
      :national_knowledge => "value for national_knowledge"
    }
  end

  it "should create a new instance given valid attributes" do
    Detail.create!(@valid_attributes)
  end
end
