require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe TutorsController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "tutors", :action => "index").should == "/tutors"
    end
  
    it "maps #new" do
      route_for(:controller => "tutors", :action => "new").should == "/tutors/new"
    end
  
    it "maps #show" do
      route_for(:controller => "tutors", :action => "show", :id => "1").should == "/tutors/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "tutors", :action => "edit", :id => "1").should == "/tutors/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "tutors", :action => "create").should == {:path => "/tutors", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "tutors", :action => "update", :id => "1").should == {:path =>"/tutors/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "tutors", :action => "destroy", :id => "1").should == {:path =>"/tutors/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/tutors").should == {:controller => "tutors", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/tutors/new").should == {:controller => "tutors", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/tutors").should == {:controller => "tutors", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/tutors/1").should == {:controller => "tutors", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/tutors/1/edit").should == {:controller => "tutors", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/tutors/1").should == {:controller => "tutors", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/tutors/1").should == {:controller => "tutors", :action => "destroy", :id => "1"}
    end
  end
end
