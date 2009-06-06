require File.dirname(__FILE__) + '/../spec_helper'
# require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Tutor do
  before(:each) do
    @valid_attributes = {
      :givenname => "John",
      :familyname => "Smith",
      :hashed_password => "value for hashed_password",
      :salt => "value for salt",
      :login_name => "js",
      :givennamefirst => true,
      :age => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Tutor.create!(@valid_attributes)
  end
end
