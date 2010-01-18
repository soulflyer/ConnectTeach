class Flavour < ActiveRecord::Base
  has_attached_file :photo,
                    :styles => { :thumb => "80x80>", :small => "120x120" },
                    :url => ":class/:id/:style.:extension",
                    :path => ":rails_root/public/images/:class/:id/:style.:extension"
end
