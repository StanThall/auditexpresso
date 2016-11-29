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

ActiveRecord::Schema.define(version: 20161129145527) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string   "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blog_posts", force: :cascade do |t|
    t.string   "title"
    t.string   "catchphrase"
    t.string   "img_path"
    t.text     "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "author_id"
    t.integer  "tag_id"
    t.string   "slug"
  end

  create_table "cabinets", force: :cascade do |t|
    t.string   "s_name"
    t.string   "l_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "rating"
    t.integer  "rank_last"
    t.datetime "rank_change_time"
    t.integer  "rank_change"
  end

  create_table "furthers", force: :cascade do |t|
    t.string   "label"
    t.string   "link"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "blog_post_id"
  end

  create_table "logs", force: :cascade do |t|
    t.string   "session_id"
    t.integer  "action_id"
    t.string   "page"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "agent"
  end

  create_table "pubs", force: :cascade do |t|
    t.string   "advertiser"
    t.string   "path"
    t.string   "poster"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "references", force: :cascade do |t|
    t.string   "label"
    t.string   "link"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "blog_post_id"
  end

  create_table "songs", force: :cascade do |t|
    t.integer  "blog_post_id"
    t.string   "title"
    t.string   "singer"
    t.string   "link"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "strips", force: :cascade do |t|
    t.string   "title"
    t.string   "catch"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  create_table "tag_links", force: :cascade do |t|
    t.integer  "blog_post_id"
    t.integer  "tag_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["blog_post_id"], name: "index_tag_links_on_blog_post_id", using: :btree
    t.index ["tag_id"], name: "index_tag_links_on_tag_id", using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.string   "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
