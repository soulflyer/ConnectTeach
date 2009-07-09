require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe TutorsController do

  def mock_tutor(stubs={})
    @mock_tutor ||= mock_model(Tutor, stubs)
  end
  
  describe "GET index" do
    it "assigns all tutors as @tutors" do
      Tutor.stub!(:find).with(:all).and_return([mock_tutor])
      get :index
      assigns[:tutors].should == [mock_tutor]
    end
  end

  describe "GET show" do
    it "assigns the requested tutor as @tutor" do
      Tutor.stub!(:find).with("37").and_return(mock_tutor)
      get :show, :id => "37"
      assigns[:tutor].should equal(mock_tutor)
    end
  end

  describe "GET new" do
    it "assigns a new tutor as @tutor" do
      Tutor.stub!(:new).and_return(mock_tutor)
      get :new
      assigns[:tutor].should equal(mock_tutor)
    end
  end

  describe "GET edit" do
    it "assigns the requested tutor as @tutor" do
      Tutor.stub!(:find).with("37").and_return(mock_tutor)
      get :edit, :id => "37"
      assigns[:tutor].should equal(mock_tutor)
    end
  end

  describe "POST create" do
    
    describe "with valid params" do
      it "assigns a newly created tutor as @tutor" do
        Tutor.stub!(:new).with({'these' => 'params'}).and_return(mock_tutor(:save => true))
        post :create, :tutor => {:these => 'params'}
        assigns[:tutor].should equal(mock_tutor)
      end

      it "redirects to the created tutor" do
        Tutor.stub!(:new).and_return(mock_tutor(:save => true))
        post :create, :tutor => {}
        response.should redirect_to(tutor_url(mock_tutor))
      end
    end
    
    describe "with invalid params" do
      it "assigns a newly created but unsaved tutor as @tutor" do
        Tutor.stub!(:new).with({'these' => 'params'}).and_return(mock_tutor(:save => false))
        post :create, :tutor => {:these => 'params'}
        assigns[:tutor].should equal(mock_tutor)
      end

      it "re-renders the 'new' template" do
        Tutor.stub!(:new).and_return(mock_tutor(:save => false))
        post :create, :tutor => {}
        response.should render_template('new')
      end
    end
    
  end

  describe "PUT update" do
    
    describe "with valid params" do
      it "updates the requested tutor" do
        Tutor.should_receive(:find).with("37").and_return(mock_tutor)
        mock_tutor.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :tutor => {:these => 'params'}
      end

      it "assigns the requested tutor as @tutor" do
        Tutor.stub!(:find).and_return(mock_tutor(:update_attributes => true))
        put :update, :id => "1"
        assigns[:tutor].should equal(mock_tutor)
      end

      it "redirects to the tutor" do
        Tutor.stub!(:find).and_return(mock_tutor(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(tutor_url(mock_tutor))
      end
    end
    
    describe "with invalid params" do
      it "updates the requested tutor" do
        Tutor.should_receive(:find).with("37").and_return(mock_tutor)
        mock_tutor.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :tutor => {:these => 'params'}
      end

      it "assigns the tutor as @tutor" do
        Tutor.stub!(:find).and_return(mock_tutor(:update_attributes => false))
        put :update, :id => "1"
        assigns[:tutor].should equal(mock_tutor)
      end

      it "re-renders the 'edit' template" do
        Tutor.stub!(:find).and_return(mock_tutor(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end
    
  end

  describe "DELETE destroy" do
    it "destroys the requested tutor" do
      Tutor.should_receive(:find).with("37").and_return(mock_tutor)
      mock_tutor.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the tutors list" do
      Tutor.stub!(:find).and_return(mock_tutor(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(tutors_url)
    end
  end

end
