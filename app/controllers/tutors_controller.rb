class TutorsController < ApplicationController
  # GET /tutors
  # GET /tutors.xml
  def index
    @tutors = Tutor.find(:all, :order => :familyname)

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
    @tutor = Tutor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tutor }
    end
  end

  # GET /tutors/1/edit
  def edit
    @tutor = Tutor.find(params[:id])
  end

  # POST /tutors
  # POST /tutors.xml
  def create
    @tutor = Tutor.new(params[:tutor])

    respond_to do |format|
      if @tutor.save
        flash[:notice] = 'Tutor was successfully created.'
        format.html { redirect_to(@tutor) }
        format.xml  { render :xml => @tutor, :status => :created, :location => @tutor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tutor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tutors/1
  # PUT /tutors/1.xml
  def update
    @tutor = Tutor.find(params[:id])
    if @tutor.id == session[:tutor_id]
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
    else
      
      flash[:notice] = "You can't update another tutors details."
      redirect_to(@tutor)
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
end
