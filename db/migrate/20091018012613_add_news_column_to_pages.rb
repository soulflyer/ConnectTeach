class AddNewsColumnToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :news, :boolean
  end

  def self.down
    remove_column :news
  end
end
