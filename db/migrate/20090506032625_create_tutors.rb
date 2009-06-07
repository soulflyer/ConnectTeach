class CreateTutors < ActiveRecord::Migration
  def self.up
    create_table :tutors do |t|
      t.string :family_name
      t.string :given_name
      t.boolean :given_name_first
      t.integer :age
      t.string :sex
      t.string :email
      t.string :phone
      t.string :flavour
      t.text :qualifications
      t.text :experience
      t.text :national_knowledge
      t.text :course_experience
      t.text :textbook_experience

      t.timestamps
    end
  end

  def self.down
    drop_table :tutors
  end
end
