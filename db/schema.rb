# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091115123342) do

  create_table "newsitems", :force => true do |t|
    t.string   "title"
    t.text     "English_content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "Vietnamese_content"
  end

  create_table "pages", :force => true do |t|
    t.string   "permalink"
    t.text     "English_content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "news"
    t.text     "Vietnamese_content"
  end

  create_table "tutors", :force => true do |t|
    t.text     "experience"
    t.text     "qualifications"
    t.text     "course_experience"
    t.text     "textbook_experience"
    t.text     "national_knowledge"
    t.integer  "age"
    t.string   "sex"
    t.string   "flavour"
    t.string   "given_name"
    t.string   "family_name"
    t.boolean  "given_name_first"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "address"
    t.integer  "phone"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "encrypted_password", :limit => 128
    t.string   "salt",               :limit => 128
    t.string   "token",              :limit => 128
    t.datetime "token_expires_at"
    t.boolean  "email_confirmed",                   :default => false, :null => false
    t.integer  "tutor_id"
    t.string   "role"
    t.string   "language"
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["id", "token"], :name => "index_users_on_id_and_token"
  add_index "users", ["token"], :name => "index_users_on_token"

end
