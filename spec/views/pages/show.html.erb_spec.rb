require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/pages/show.html.erb" do
  include PagesHelper
  before(:each) do
    assigns[:page] = @page = stub_model(Page,
      :name => "value for name",
      :permalink => "value for permalink",
      :content => "value for content"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ permalink/)
    response.should have_text(/value\ for\ content/)
  end
end

