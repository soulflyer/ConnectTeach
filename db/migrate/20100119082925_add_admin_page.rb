class AddAdminPage < ActiveRecord::Migration
  def self.up
    admin_page = Page.new
    admin_page.permalink = "admin"
    admin_page.English_content = "Go to ConnectTeach/static/admin/edit to edit this page..."
    admin_page.save
  end

  def self.down
  end
end
