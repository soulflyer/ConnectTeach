class AddVietnameseContentToNewsitem < ActiveRecord::Migration
  def self.up
    add_column :newsitems, :Vietnamese_content, :text
    rename_column :newsitems, :contents, :English_content
  end

  def self.down
    remove_column :newsitems, :Vietnamese_content
    rename_column :newsitems, :English_content, :contents
  end
end
