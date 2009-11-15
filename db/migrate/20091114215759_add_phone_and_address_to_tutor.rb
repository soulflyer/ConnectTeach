class AddPhoneAndAddressToTutor < ActiveRecord::Migration
  def self.up
    add_column :tutors, :address, :text
    add_column :tutors, :phone, :integer
  end

  def self.down
    remove_column :tutors, :address
    remove_column :tutors, :phone
  end
end
