class AddTutorToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :tutor_id, :integer
  end

  def self.down
    remove_column :users, :tutor_id
  end
end
