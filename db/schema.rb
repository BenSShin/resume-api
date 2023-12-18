# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema[7.0].define(version: 2023_12_18_181246) do
=======
ActiveRecord::Schema[7.0].define(version: 2023_12_18_185212) do
>>>>>>> af337588c658af49c9ab478a01a3b7093dea09f9
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "capstones", force: :cascade do |t|
    t.string "capstone_name"
    t.text "description"
    t.string "url"
    t.string "screenshot"
<<<<<<< HEAD
    t.integer "user_id"
=======
    t.integer "student_id"
>>>>>>> af337588c658af49c9ab478a01a3b7093dea09f9
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educations", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "degree"
    t.string "university_name"
    t.text "details"
<<<<<<< HEAD
    t.integer "user_id"
=======
    t.integer "student_id"
>>>>>>> af337588c658af49c9ab478a01a3b7093dea09f9
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "job_title"
    t.string "company_name"
    t.text "details"
<<<<<<< HEAD
    t.integer "user_id"
=======
    t.integer "student_id"
>>>>>>> af337588c658af49c9ab478a01a3b7093dea09f9
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "skill_name"
<<<<<<< HEAD
    t.integer "user_id"
=======
    t.integer "student_id"
>>>>>>> af337588c658af49c9ab478a01a3b7093dea09f9
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.text "short_bio"
    t.string "linkedin_url"
    t.string "twitter_handle"
    t.string "personal_url"
    t.string "resume_url"
    t.string "github_url"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
<<<<<<< HEAD
=======
    t.string "password_digest"
>>>>>>> af337588c658af49c9ab478a01a3b7093dea09f9
  end

end
