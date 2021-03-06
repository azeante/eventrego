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

ActiveRecord::Schema.define(version: 20160906110357) do

  create_table "attendees", force: :cascade do |t|
    t.datetime "timePayment"
    t.float    "amountBilled"
    t.float    "amountPaid"
    t.integer  "person_id"
    t.integer  "event_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["event_id"], name: "index_attendees_on_event_id"
    t.index ["person_id"], name: "index_attendees_on_person_id"
  end

  create_table "events", force: :cascade do |t|
    t.date     "dateOfEvent"
    t.time     "timeOfEvent"
    t.string   "venue"
    t.float    "price"
    t.string   "title"
    t.integer  "maximumParticipants"
    t.integer  "minimumParticipants"
    t.text     "participantsMustBring"
    t.text     "notes"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "picture"
  end

  create_table "organisers", force: :cascade do |t|
    t.text     "role"
    t.integer  "person_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_organisers_on_event_id"
    t.index ["person_id"], name: "index_organisers_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "emailAddress"
    t.boolean  "ifSubscribed"
    t.string   "gender"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "telNo",        default: 0
    t.index ["emailAddress"], name: "index_people_on_emailAddress", unique: true
  end

  create_table "presenters", force: :cascade do |t|
    t.text     "biography"
    t.text     "remunerationArrangements"
    t.float    "allowance"
    t.float    "remuneration"
    t.integer  "person_id"
    t.integer  "event_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["event_id"], name: "index_presenters_on_event_id"
    t.index ["person_id"], name: "index_presenters_on_person_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",           default: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "volunteers", force: :cascade do |t|
    t.text     "role"
    t.integer  "person_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_volunteers_on_event_id"
    t.index ["person_id"], name: "index_volunteers_on_person_id"
  end

end
