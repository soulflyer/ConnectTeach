class AddAttachmentsPhotoToTutor < ActiveRecord::Migration
  def self.up
    add_column :tutors, :photo_file_name, :string
    add_column :tutors, :photo_content_type, :string
    add_column :tutors, :photo_file_size, :integer
    add_column :tutors, :photo_updated_at, :datetime
  end

  def self.down
    remove_column :tutors, :photo_file_name
    remove_column :tutors, :photo_content_type
    remove_column :tutors, :photo_file_size
    remove_column :tutors, :photo_updated_at
  end
end
