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

ActiveRecord::Schema.define(version: 20150516161205) do

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
    t.string   "event_header"
    t.string   "event_intro"
  end

  create_table "carousels", force: true do |t|
    t.string   "title"
    t.boolean  "culture"
    t.boolean  "overview"
    t.boolean  "consulting"
    t.boolean  "pm"
    t.boolean  "bi"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "carousel_image"
    t.boolean  "recruiting"
    t.boolean  "ap"
  end

  create_table "contacts", force: true do |t|
    t.text     "address"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "linkedin"
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
    t.integer  "sortorder"
  end

  create_table "events", force: true do |t|
    t.string   "location"
    t.date     "date"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
  end

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "images", force: true do |t|
    t.string   "alt",               default: ""
    t.string   "hint",              default: ""
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "slug"
  end

  add_index "jobs", ["slug"], name: "index_jobs_on_slug"

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
    t.string   "practice_area_4_link"
    t.string   "practice_area_4_image"
    t.string   "practice_area_4_title"
    t.text     "practice_area_4_copy"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date"
    t.string   "author"
    t.string   "share_text"
    t.string   "slug"
    t.string   "blog_image"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "alt",                default: ""
    t.string   "hint",               default: ""
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  add_index "posts", ["slug"], name: "index_posts_on_slug"

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
    t.string   "marketing_services_title"
    t.text     "marketing_services_copy"
    t.string   "sales_services_title"
    t.text     "sales_services_copy"
    t.string   "channel_services_title"
    t.text     "channel_services_copy"
    t.string   "bi_services_title"
    t.text     "bi_services_copy"
    t.string   "pm_process_groups_title"
    t.text     "pm_process_groups_copy"
    t.string   "pm_knowledge_title"
    t.text     "pm_knowledge_copy"
    t.string   "pm_deliverables_title"
    t.text     "pm_deliverables_copy"
    t.string   "bifocus_title"
    t.text     "bifocus_copy"
    t.string   "pa4_title"
    t.text     "pa4_copy"
    t.string   "apportal_title"
    t.text     "apportal_copy"
    t.string   "pa1_image"
    t.string   "pa2_image"
    t.string   "pa3_image"
    t.string   "pa4_image"
    t.text     "pa1_home_copy"
    t.text     "pa2_home_copy"
    t.text     "pa3_home_copy"
    t.text     "pa4_home_copy"
  end

  create_table "quotes", force: true do |t|
    t.string   "title"
    t.text     "quote"
    t.string   "credit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "successes", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.text     "blurb"
    t.string   "article"
    t.boolean  "businessconsulting"
    t.boolean  "projectmanagement"
    t.boolean  "businessintelligence"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "apportals"
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
