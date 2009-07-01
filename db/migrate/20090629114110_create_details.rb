class CreateDetails < ActiveRecord::Migration
  def self.up
    create_table :details do |t|
      t.text :experience
      t.text :qualifications
      t.text :course_experience
      t.text :textbook_experience
      t.text :national_knowledge

      t.timestamps
    end
  end

  def self.down
    drop_table :details
  end
end
