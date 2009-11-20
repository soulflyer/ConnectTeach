class AddClientSubpages < ActiveRecord::Migration
  def self.up
    corporate_page = Page.new
    corporate_page.permalink = "corporate"
    corporate_page.English_content = "Go to ConnectTeach/static/courses/edit to edit this page..."
    corporate_page.save
    adults_page = Page.new
    adults_page.permalink = "adults"
    adults_page.English_content = "Go to ConnectTeach/static/courses/edit to edit this page..."
    adults_page.save
    parents_page = Page.new
    parents_page.permalink = "parents"
    parents_page.English_content = "Go to ConnectTeach/static/courses/edit to edit this page..."
    parents_page.save
    students_page = Page.new
    students_page.permalink = "students"
    students_page.English_content = "Go to ConnectTeach/static/courses/edit to edit this page..."
    students_page.save
  end

  def self.down
  end
end
