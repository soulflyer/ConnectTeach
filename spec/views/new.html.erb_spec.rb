require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/pages/new.html.erb" do
  include PagesHelper
  
  before(:each) do
    assigns[:page] = stub_model(Page,
      :new_record? => true,
      :name => "value for name",
      :permalink => "value for permalink",
      :content => "value for content"
    )
  end

  it "renders new page form" do
    render
    
    response.should have_tag("form[action=?][method=post]", pages_path) do
      with_tag("input#page_name[name=?]", "page[name]")
      with_tag("input#page_permalink[name=?]", "page[permalink]")
      with_tag("textarea#page_content[name=?]", "page[content]")
    end
  end
end


