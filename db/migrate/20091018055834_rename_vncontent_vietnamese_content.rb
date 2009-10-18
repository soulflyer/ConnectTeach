class RenameVncontentVietnameseContent < ActiveRecord::Migration
  def self.up
    rename_column :pages, :vncontent, :Vietnamese_content
    rename_column :pages, :content, :English_content
  end

  def self.down
    rename_column :pages, :Vietnamese_content, :vncontent
    rename_column :pages, :English_content, :content
  end
end
