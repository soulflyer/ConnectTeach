require 'digest/sha1'

class Tutor < ActiveRecord::Base
  
  validates_presence_of     :login_name
  validates_uniqueness_of   :login_name
 
  attr_accessor :password_confirmation
  validates_confirmation_of :password

  validate :password_non_blank
  
  has_attached_file :photo, :styles => { :small => "80x80>" }
  
  def name
    if givennamefirst
      givenname + " " + familyname
    else
      familyname + " " + givenname
    end
  end
  
  def self.authenticate(name, password)
    user = self.find_by_login_name(name)
    if user
      expected_password = encrypted_password(password, user.salt)
      if user.hashed_password != expected_password
        user = nil
      end
    end
    user
  end
  
  
  # 'password' is a virtual attribute
  
  def password
    @password
  end
  
  def password=(pwd)
    @password = pwd
    return if pwd.blank?
    create_new_salt
    self.hashed_password = Tutor.encrypted_password(self.password, self.salt)
  end
  
  

private

  def password_non_blank
    errors.add(:password, "Missing password") if hashed_password.blank?
  end

  
  
  def create_new_salt
    self.salt = self.object_id.to_s + rand.to_s
  end
  
  
  
  def self.encrypted_password(password, salt)
    string_to_hash = password + "wibble" + salt
    Digest::SHA1.hexdigest(string_to_hash)
  end
  

end