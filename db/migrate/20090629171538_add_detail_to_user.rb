class AddDetailToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :detail_id, :integer
  end

  def self.down
    remove_column :users, :detail_id
  end
end
