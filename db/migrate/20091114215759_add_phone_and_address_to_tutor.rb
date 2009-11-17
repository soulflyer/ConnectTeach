class AddPhoneAndAddressToTutor < ActiveRecord::Migration
  def self.up
    add_column :tutors, :address, :text
  end

  def self.down
    remove_column :tutors, :address
  end
end
