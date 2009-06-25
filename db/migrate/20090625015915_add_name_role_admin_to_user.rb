class AddNameRoleAdminToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :family_name, :string
    add_column :users, :given_name, :string
    add_column :users, :given_name_first, :boolean
    add_column :users, :admin, :boolean
    add_column :users, :role, :string
  end

  def self.down
    remove_column :users, :role
    remove_column :users, :admin
    remove_column :users, :given_name_first
    remove_column :users, :given_name
    remove_column :users, :family_name
  end
end
