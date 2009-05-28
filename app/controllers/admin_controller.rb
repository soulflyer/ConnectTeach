class AdminController < ApplicationController
  # just display the form and wait for tutor to
  # enter a name and password
  
  def login
    if request.post?
      tutor = Tutor.authenticate(params[:name], params[:password])
      if tutor
        session[:tutor_id] = tutor.id
        redirect_to(:controller => "tutors", :action => "index")
      else
        flash.now[:notice] = "Invalid tutor/password combination"
      end
    end
  end
  

  
  def logout
    session[:tutor_id] = nil
    flash[:notice] = "Logged out"
    redirect_to(:action => "login")
  end

  def index
  end

end
