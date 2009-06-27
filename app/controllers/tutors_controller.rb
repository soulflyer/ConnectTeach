class TutorsController < ApplicationController
  include Clearance::Authentication
  def index
    @tutors = User.all
  end
  
  def show  
    @tutor = User.find(params[:id])
    if ! can_be_accessed_by(@tutor)
      flash[:notice] = "You can't view another tutor's private details."
      redirect_to( :action => "index" )
    end
  end
  
  def edit
    @tutor = User.find(params[:id])
    if ! can_be_accessed_by(@tutor)
      flash[:notice] = "You can't edit another tutor's private details."
      redirect_to( :action => "index" )
    end
  end
  
  def destroy
    @tutor = ::User.find(params[:id])
    @tutor.destroy
    redirect_to(tutors_url) 
  end
  
  def new
    @tutor = User.new
  end
  
  def update
    @tutor = User.find(params[:id])
    if @tutor.update_attributes(params[:tutor])
        flash[:notice] = 'Tutor was successfully updated.'
    else
      render :action => "edit"
    end
  end
  
private

  def can_be_accessed_by (tutor)
    # return tutor.id == session[:user_id] || User.find(session[:user_id]).admin
    return tutor.id == session[:user_id] || User.find(session[:user_id]).admin
  end
  
end
