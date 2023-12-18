ActiveRecord::Schema[7.0].define(version: 2023_12_18_181246) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "capstones", force: :cascade do |t|
    t.string "capstone_name"
    t.text "description"
    t.string "url"
    t.string "screenshot"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educations", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "degree"
    t.string "university_name"
    t.text "details"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "job_title"
    t.string "company_name"
    t.text "details"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "skill_name"
    t.integer "user_id"
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
  end
end
