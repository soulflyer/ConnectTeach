class AddVntextColumnToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :vntext, :text
  end

  def self.down
    remove_column :pages, :vntext
  end
end
