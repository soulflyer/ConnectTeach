class TutorsController < ApplicationController
  include Clearance::Authentication
  def index
    @tutors = User.all
  end
  def show
    @tutor = User.find(params[:id])
    
  end
end
