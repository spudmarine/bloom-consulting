# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140430021318) do

  create_table "abouts", force: true do |t|
    t.string   "hero_image"
    t.string   "hero_title"
    t.string   "hero_copy"
    t.string   "area1_title"
    t.text     "area1_copy"
    t.string   "area2_title"
    t.text     "area2_copy"
    t.string   "area3_title"
    t.text     "area3_copy"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_mains", force: true do |t|
    t.string   "hero_image"
    t.string   "hero_title"
    t.string   "stratum_1_image"
    t.string   "stratum_1_title"
    t.text     "stratum_1_copy"
    t.string   "stratum_1_cta"
    t.string   "stratum_1_link"
    t.string   "practice_area_1_image"
    t.string   "practice_area_1_title"
    t.text     "practice_area_1_copy"
    t.string   "practice_area_1_link"
    t.string   "practice_area_2_image"
    t.string   "practice_area_2_title"
    t.text     "practice_area_2_copy"
    t.string   "practice_area_2_link"
    t.string   "practice_area_3_image"
    t.string   "practice_area_3_title"
    t.text     "practice_area_3_copy"
    t.string   "practice_area_3_link"
    t.string   "stratum_2_image"
    t.string   "stratum_2_title"
    t.text     "stratum_2_copy"
    t.string   "stratum_2_cta"
    t.string   "stratum_2_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_pages", force: true do |t|
    t.string   "name"
    t.string   "permalink"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_pages", ["permalink"], name: "index_admin_pages_on_permalink"

  create_table "careers", force: true do |t|
    t.string   "hero_image"
    t.string   "hero_title"
    t.text     "hero_copy"
    t.string   "intro_title"
    t.string   "cta_title"
    t.text     "cta_copy"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "intro_copy"
  end

  create_table "contacts", force: true do |t|
    t.text     "address"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "employee_image"
    t.string   "name"
    t.string   "title"
    t.text     "bio"
    t.string   "linkedin"
    t.string   "twitter"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "bio_intro"
  end

  create_table "insights", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.text     "blurb"
    t.string   "article"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "businessconsulting"
    t.boolean  "projectmanagement"
    t.boolean  "businessintelligence"
  end

  create_table "jobs", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
    t.text     "description"
    t.string   "area1_title"
    t.text     "area1_copy"
    t.string   "area2_title"
    t.text     "area2_copy"
    t.string   "area3_title"
    t.text     "area3_copy"
    t.string   "area4_title"
    t.text     "area4_copy"
    t.string   "area5_title"
    t.text     "area5_copy"
    t.string   "area6_title"
    t.text     "area6_copy"
    t.string   "area7_title"
    t.text     "area7_copy"
  end

  create_table "mains", force: true do |t|
    t.string   "hero_image"
    t.string   "hero_title"
    t.string   "stratum_1_image"
    t.string   "stratum_1_title"
    t.text     "stratum_1_copy"
    t.string   "stratum_1_cta"
    t.string   "stratum_1_link"
    t.string   "practice_area_1_image"
    t.string   "practice_area_1_title"
    t.text     "practice_area_1_copy"
    t.string   "practice_area_1_link"
    t.string   "practice_area_2_image"
    t.string   "practice_area_2_title"
    t.text     "practice_area_2_copy"
    t.string   "practice_area_2_link"
    t.string   "practice_area_3_image"
    t.string   "practice_area_3_title"
    t.text     "practice_area_3_copy"
    t.string   "practice_area_3_link"
    t.string   "stratum_2_image"
    t.string   "stratum_2_title"
    t.text     "stratum_2_copy"
    t.string   "stratum_2_cta"
    t.string   "stratum_2_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "practiceareas", force: true do |t|
    t.string   "hero_image"
    t.string   "hero_title"
    t.text     "hero_copy"
    t.string   "pa1_title"
    t.text     "pa1_copy"
    t.string   "pa2_title"
    t.text     "pa2_copy"
    t.string   "pa3_title"
    t.text     "pa3_copy"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quotes", force: true do |t|
    t.string   "title"
    t.text     "quote"
    t.string   "credit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "intro_title"
    t.text     "intro_copy"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
