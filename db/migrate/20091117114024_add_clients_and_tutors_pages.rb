class AddClientsAndTutorsPages < ActiveRecord::Migration
  def self.up
    client_page = Page.new
    client_page.permalink = "clientinfo"
    client_page.English_content = "Add some details here"
    client_page.save
    tutor_page = Page.new
    tutor_page.permalink = "tutorinfo"
    tutor_page.English_content = "Add some details here"
    tutor_page.save    
  end

  def self.down
  end
end
