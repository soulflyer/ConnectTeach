class AddInitialAdminUser < ActiveRecord::Migration
  def self.up
    user = User.new()
    user.role = "admin"
    user.email = "admin@connectteach.com"
    user.email_confirmed = true
    user.update_password ("changeme", "changeme")
    # user.encrypted_password = "66261bacb4f243ceb063dceed331019bb14f1955"
    # user.salt = "83d836c01c091f321a48c716c857977edc5b0360"
    user.save
    
  end

  def self.down
  end
end
