class Clearance::UsersController < ApplicationController
  unloadable

  before_filter :redirect_to_root, :only => [:new, :create], :if => :signed_in?
  filter_parameter_logging :password

  def index
    @user = ::User.all
    render :template => 'users/index'
  end
  
  def show
    @user = ::User.find(params[:id])
    render :template => 'users/show'
  end
  
  def 
    destroy
    @user = ::User.find(params[:id])
    @user.destroy
    redirect_to(users_url) 
  end

  def new
    @user = ::User.new(params[:user])
    render :template => 'users/new'
  end

  def edit
    @user = ::User.find(params[:id])
    render :template => 'users/edit'
  end
  
  def update
    @user = ::User.find(params[:id])
    respond_to do |format|   
      if @user.update_attributes(params[:user])
        flash[:notice] = 'User was successfully updated.'
        format.html { redirect_to(@user) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def create
    @user = ::User.new params[:user]
    if @user.save
      ::ClearanceMailer.deliver_confirmation @user
      flash_notice_after_create
      redirect_to(url_after_create)
    else
      render :template => 'users/new'
    end
  end

  private

  def flash_notice_after_create
    flash[:notice] = translate(:deliver_confirmation,
      :scope   => [:clearance, :controllers, :users],
      :default => "You will receive an email within the next few minutes. " <<
                  "It contains instructions for confirming your account.")
  end

  def url_after_create
    new_session_url
  end
end
