class User < ActiveRecord::Base
  belongs_to :tutor
  include Clearance::User
  
  def admin?
    role == "admin"
  end
end
