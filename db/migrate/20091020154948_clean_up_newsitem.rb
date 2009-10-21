class CleanUpNewsitem < ActiveRecord::Migration
  def self.up
    remove_column :newsitems, :image_url   
  end

  def self.down
  end
end
