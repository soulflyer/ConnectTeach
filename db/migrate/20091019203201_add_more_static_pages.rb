class AddMoreStaticPages < ActiveRecord::Migration
  def self.up
    down
    home_page = Page.new
    home_page.name ="home"
    home_page.permalink = "home"
    home_page.news = TRUE
    home_page.English_content = "Go to ConnectTeach/static/home/edit to edit this page..."
    home_page.save
    contact_page = Page.new
    contact_page.permalink = "contact"
    contact_page.name = "contact"
    contact_page.English_content = "Go to ConnectTeach/static/contact/edit to edit this page..."
    contact_page.save
    about_page = Page.new
    about_page.permalink = "about"
    about_page.name = "about"
    about_page.English_content = "Go to ConnectTeach/static/about/edit to edit this page..."
    about_page.save
    courses_page = Page.new
    courses_page.permalink = "courses"
    courses_page.name = "courses"
    courses_page.English_content = "Go to ConnectTeach/static/courses/edit to edit this page..."
    courses_page.save
  end

  def self.down
    Page.delete_all
  end
end
