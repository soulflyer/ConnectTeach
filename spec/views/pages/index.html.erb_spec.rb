require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/pages/index.html.erb" do
  include PagesHelper
  
  before(:each) do
    assigns[:pages] = [
      stub_model(Page,
        :name => "value for name",
        :permalink => "value for permalink",
        :content => "value for content"
      ),
      stub_model(Page,
        :name => "value for name",
        :permalink => "value for permalink",
        :content => "value for content"
      )
    ]
  end

  it "renders a list of pages" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for permalink".to_s, 2)
    response.should have_tag("tr>td", "value for content".to_s, 2)
  end
end

