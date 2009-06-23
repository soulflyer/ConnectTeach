class TutorsController < ApplicationController
  include Clearance::Authentication
  def index
    @tutors = User.all
  end
end
