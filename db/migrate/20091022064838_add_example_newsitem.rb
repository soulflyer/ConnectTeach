class AddExampleNewsitem < ActiveRecord::Migration
  def self.up
    down
    first_newsitem = Newsitem.new
    first_newsitem.title = "First Newsitem"
    first_newsitem.English_content = "Example Newsitem"
    first_newsitem.save
    second_newsitem = Newsitem.new
    second_newsitem.title = "Second Newsitem"
    second_newsitem.English_content = "Example Newsitem"
    second_newsitem.save
    third_newsitem = Newsitem.new
    third_newsitem.title = "Third Newsitem"
    third_newsitem.English_content = "Example Newsitem - please edit"
    third_newsitem.save
  end

  def self.down
    Newsitem.delete_all
  end
end
