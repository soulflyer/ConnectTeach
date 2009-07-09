class CreateTutors < ActiveRecord::Migration
  def self.up
    create_table :tutors do |t|
      t.text :experience
      t.text :qualifications
      t.text :course_experience
      t.text :textbook_experience
      t.text :national_knowledge
      t.integer :age
      t.integer :phone
      t.string :sex
      t.string :flavour
      t.string :given_name
      t.string :family_name
      t.boolean :given_name_first

      t.timestamps
    end
  end

  def self.down
    drop_table :tutors
  end
end
