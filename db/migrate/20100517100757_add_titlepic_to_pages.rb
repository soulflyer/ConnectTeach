class AddTitlepicToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :titlepic, :text
  end

  def self.down
    remove_column :pages, :titlepic
  end
end
