class User < ActiveRecord::Base
  belongs_to :detail
  include Clearance::User
end
