class AddAttachmentsPhotoToNewsitem < ActiveRecord::Migration
  def self.up
    add_column :newsitems, :photo_file_name, :string
    add_column :newsitems, :photo_content_type, :string
    add_column :newsitems, :photo_file_size, :integer
    add_column :newsitems, :photo_updated_at, :datetime
    remove_column :newsitems, :photo_url
  end

  def self.down
    remove_column :newsitems, :photo_file_name
    remove_column :newsitems, :photo_content_type
    remove_column :newsitems, :photo_file_size
    remove_column :newsitems, :photo_updated_at
    add_column :photo_url
  end
end
