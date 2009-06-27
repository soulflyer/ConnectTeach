class User < ActiveRecord::Base
  include Clearance::User
  has_attached_file :photo,
                    :styles => { :thumb => "80x80>", :small => "120x120" },
                    :url => ":class/:id/:style.:extension",
                    :path => ":rails_root/public/images/:class/:id/:style.:extension"
  
  def name
    if given_name_first
      given_name + " " + family_name
    else
      family_name + " " + given_name
    end
  end
end
