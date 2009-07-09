class LoadPagesData < ActiveRecord::Migration
  def self.up
    down
    home_page = Page.new
    home_page.permalink = "home"
    home_page.content = "Go to ConnectTeach/static/home/edit to edit this page..."
    home_page.save
  end

  def self.down
    Page.delete_all
  end
end
