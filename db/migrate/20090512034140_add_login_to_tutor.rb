class AddLoginToTutor < ActiveRecord::Migration
  def self.up
    add_column :tutors, :login_name, :string
    add_column :tutors, :hashed_password, :string
    add_column :tutors, :salt, :string
    add_column :tutors, :admin, :boolean
  end

  def self.down
    remove_column :tutors, :salt
    remove_column :tutors, :hashed_password
    remove_column :tutors, :login_name
    remove_column :tutors, :admin
  end
end
