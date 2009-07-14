class Tutor < ActiveRecord::Base
  has_attached_file :photo,
                    :styles => { :thumb => "80x80>", :small => "120x120" },
                    :url => ":class/:id/:style.:extension",
                    :path => ":rails_root/public/images/:class/:id/:style.:extension"
  has_one :User
  validates_presence_of :given_name, :on => :create, :message => "can't be blank"
  validates_presence_of :family_name, :on => :create, :message => "can't be blank"
  validates_presence_of :sex, :on => :create, :message => "can't be blank"
  validates_presence_of :given_name_first, :on => :create, :message => "can't be blank"
  
  def name
    if given_name_first
      given_name + " " + family_name
    else
      family_name + " " + given_name
    end
  end
end
