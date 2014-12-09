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

ActiveRecord::Schema.define(version: 20141206063808) do

  create_table "lectures", force: true do |t|
    t.string   "name"
    t.integer  "lesson_time_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_attendances", force: true do |t|
    t.integer  "student_id"
    t.integer  "lecture_id"
    t.integer  "lesson_time"
    t.boolean  "present"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "student_attendances", ["lecture_id"], name: "index_student_attendances_on_lecture_id"
  add_index "student_attendances", ["student_id"], name: "index_student_attendances_on_student_id"

  create_table "student_lectures", force: true do |t|
    t.integer  "student_id"
    t.integer  "lecture_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "student_lectures", ["lecture_id"], name: "index_student_lectures_on_lecture_id"
  add_index "student_lectures", ["student_id"], name: "index_student_lectures_on_student_id"

  create_table "students", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
