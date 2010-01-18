class TutorsController < ApplicationController
  before_filter :must_be_admin, :only => [:index]
  # GET /tutors
  # GET /tutors.xml
  def index
    
    # # @tutors = Tutor.all
    @tutors = Tutor.paginate :page => params[:page], :order => 'family_name'

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tutors }
    end
  end

  # GET /tutors/1
  # GET /tutors/1.xml
  def show
    @tutor = Tutor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tutor }
    end
  end

  # GET /tutors/new
  # GET /tutors/new.xml
  def new
    @flavours = Flavour.all
    if signed_in? && current_user.tutor 
      @tutor = current_user.tutor
    else
      @tutor = Tutor.new
      # current_user.tutor_id = @tutor
      # current_user.save
    end
  end

  # GET /tutors/1/edit
  def edit
    @flavours = Flavour.all
    if signed_in?
      @tutor = Tutor.find(params[:id])
    else
      flash[:error] = 'Please login first'
      redirect_to :controller => "clearance/sessions", :action => "new"
    end
  end

  # POST /tutors
  # POST /tutors.xml
  def create
    # Todo
    # This is creating the tutor the first time the user goes to edit their tutor details
    # It might make more sense to create the tutor when the user is created and clean up
    # this section. 
    @tutor = Tutor.new(params[:tutor])
    @user = current_user
    puts "***************************************************************************"
    puts @user.tutor_id
    puts @tutor.id
    @user.tutor_id = @tutor.id
    puts @user.tutor_id
    puts "***************************************************************************"
    respond_to do |format|
      if @tutor.save
        puts "Saved tutor"
        @user.tutor_id = @tutor.id
        if @user.save
          puts "saved user"
          flash[:notice] = 'Tutor was successfully created.'
          format.html { redirect_to(@tutor) }
          format.xml  { render :xml => @tutor, :status => :created, :location => @tutor }
        else
          puts "Failed to save user"
          # Todo 
          # can we delete the failed tutor here?
        end
      end
      puts "Failed to save tutor"
      format.html { render :action => "new" }
      format.xml  { render :xml => @tutor.errors, :status => :unprocessable_entity }      
    end
  end

  # PUT /tutors/1
  # PUT /tutors/1.xml
  def update
    @tutor = Tutor.find(params[:id])

    respond_to do |format|
      if @tutor.update_attributes(params[:tutor])
        flash[:notice] = 'Tutor was successfully updated.'
        format.html { redirect_to(@tutor) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tutor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tutors/1
  # DELETE /tutors/1.xml
  def destroy
    @tutor = Tutor.find(params[:id])
    @tutor.destroy

    respond_to do |format|
      format.html { redirect_to(tutors_url) }
      format.xml  { head :ok }
    end
  end
  
private
  def must_be_admin
    if !current_user.admin?
      flash[:error] = 'Must be admin'
      redirect_to root_url
    end
  end
end
