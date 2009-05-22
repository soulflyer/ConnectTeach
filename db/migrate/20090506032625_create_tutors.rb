class CreateTutors < ActiveRecord::Migration
  def self.up
    create_table :tutors do |t|
      t.string :familyname
      t.string :givenname
      t.boolean :givennamefirst
      t.integer :age
      t.string :sex
      t.string :flavour
      t.text :qualifications
      t.text :experience
      t.text :nationalknowledge
      t.text :courseexperience
      t.text :textbookexperience

      t.timestamps
    end
  end

  def self.down
    drop_table :tutors
  end
end
