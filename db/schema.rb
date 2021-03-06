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

ActiveRecord::Schema.define(version: 20170517151238) do

# Could not dump table "annotations" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "annotations_locations", id: false, force: :cascade do |t|
    t.integer "annotation_id", null: false
    t.integer "location_id",   null: false
  end

  create_table "annotations_videos", id: false, force: :cascade do |t|
    t.integer "annotation_id", null: false
    t.integer "video_id",      null: false
  end

  create_table "annotators", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_keys", force: :cascade do |t|
    t.string   "application_name"
    t.string   "api_key"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "dummythings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "location",   null: false
  end

  create_table "locations_videos", id: false, force: :cascade do |t|
    t.integer "video_id",    null: false
    t.integer "location_id", null: false
  end

  create_table "semantic_tags", force: :cascade do |t|
    t.string   "tag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tag_annotations", force: :cascade do |t|
    t.integer "annotation_id"
    t.integer "semantic_tag_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "token"
    t.datetime "token_created_at"
  end

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "location_id"
  end

end
