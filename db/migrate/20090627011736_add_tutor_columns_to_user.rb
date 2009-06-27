class AddTutorColumnsToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :age, :string
    add_column :users, :phone, :integer
    add_column :users, :sex, :string
    add_column :users, :flavour, :string
    add_column :users, :qualifications, :text
    add_column :users, :experience, :text
    add_column :users, :national_knowledge, :text
    add_column :users, :course_experience, :text
    add_column :users, :textbook_experience, :text
  end

  def self.down
    remove_column :users, :textbook_experience
    remove_column :users, :course_experience
    remove_column :users, :national_knowledge
    remove_column :users, :experience
    remove_column :users, :qualifications
    remove_column :users, :flavour
    remove_column :users, :sex
    remove_column :users, :phone
    remove_column :users, :age
  end
end
