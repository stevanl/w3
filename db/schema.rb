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

ActiveRecord::Schema.define(version: 20140112185532) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "permalink"
    t.string   "homepage_url"
    t.string   "blog_url"
    t.string   "blog_feed_url"
    t.string   "twitter_username"
    t.string   "category_code"
    t.string   "number_of_employees"
    t.string   "founded_year"
    t.string   "founded_month"
    t.string   "founded_day"
    t.string   "email_address"
    t.string   "phone_number"
    t.text     "description"
    t.text     "overview"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
