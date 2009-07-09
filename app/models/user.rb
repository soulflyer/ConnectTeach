class User < ActiveRecord::Base
  belongs_to :tutor
  include Clearance::User
end
