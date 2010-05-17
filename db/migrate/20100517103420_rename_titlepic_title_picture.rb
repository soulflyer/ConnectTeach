class RenameTitlepicTitlePicture < ActiveRecord::Migration
  def self.up
    rename_column :pages, :titlepic, :title_picture
  end

  def self.down
    rename_column :pages, :title_picture, :titlepic
  end
end
