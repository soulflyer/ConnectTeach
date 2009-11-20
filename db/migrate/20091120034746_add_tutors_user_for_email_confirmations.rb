class AddTutorsUserForEmailConfirmations < ActiveRecord::Migration
  def self.up
    user = User.new()
    user.role = "admin"
    user.email = "tutors@connectteach.com"
    user.email_confirmed = true
    user.update_password ("changeme", "changeme")
    user.save
  end

  def self.down
  end
end
