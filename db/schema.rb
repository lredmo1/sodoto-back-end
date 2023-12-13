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

ActiveRecord::Schema.define(version: 2023_12_12_234749) do

  create_table "lesson_texts", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "body"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_lesson_texts_on_user_id"
  end

  create_table "lesson_videos", force: :cascade do |t|
    t.string "title"
    t.string "caption"
    t.string "video_url"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_lesson_videos_on_user_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.integer "lesson_text_id", null: false
    t.integer "lesson_video_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lesson_text_id"], name: "index_lessons_on_lesson_text_id"
    t.index ["lesson_video_id"], name: "index_lessons_on_lesson_video_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "lesson_texts", "users"
  add_foreign_key "lesson_videos", "users"
  add_foreign_key "lessons", "lesson_texts"
  add_foreign_key "lessons", "lesson_videos"
end
