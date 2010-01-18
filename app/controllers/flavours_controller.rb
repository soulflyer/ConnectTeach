class FlavoursController < ApplicationController
  # GET /flavours
  # GET /flavours.xml
  def index
    @flavours = Flavour.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @flavours }
    end
  end

  # GET /flavours/1
  # GET /flavours/1.xml
  def show
    @flavour = Flavour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @flavour }
    end
  end

  # GET /flavours/new
  # GET /flavours/new.xml
  def new
    @flavour = Flavour.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @flavour }
    end
  end

  # GET /flavours/1/edit
  def edit
    @flavour = Flavour.find(params[:id])
  end

  # POST /flavours
  # POST /flavours.xml
  def create
    @flavour = Flavour.new(params[:flavour])

    respond_to do |format|
      if @flavour.save
        flash[:notice] = 'Flavour was successfully created.'
        format.html { redirect_to(@flavour) }
        format.xml  { render :xml => @flavour, :status => :created, :location => @flavour }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @flavour.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /flavours/1
  # PUT /flavours/1.xml
  def update
    @flavour = Flavour.find(params[:id])

    respond_to do |format|
      if @flavour.update_attributes(params[:flavour])
        flash[:notice] = 'Flavour was successfully updated.'
        format.html { redirect_to(@flavour) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @flavour.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /flavours/1
  # DELETE /flavours/1.xml
  def destroy
    @flavour = Flavour.find(params[:id])
    @flavour.destroy

    respond_to do |format|
      format.html { redirect_to(flavours_url) }
      format.xml  { head :ok }
    end
  end
end
