require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/pages/edit.html.erb" do
  include PagesHelper
  
  before(:each) do
    assigns[:page] = @page = stub_model(Page,
      :new_record? => false,
      :name => "value for name",
      :permalink => "value for permalink",
      :content => "value for content"
    )
  end

  it "renders the edit page form" do
    render
    
    response.should have_tag("form[action=#{page_path(@page)}][method=post]") do
      with_tag('input#page_name[name=?]', "page[name]")
      with_tag('input#page_permalink[name=?]', "page[permalink]")
      with_tag('textarea#page_content[name=?]', "page[content]")
    end
  end
end


