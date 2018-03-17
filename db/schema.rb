ActiveRecord::Schema.define(version: 20180314201913) do

  enable_extension "plpgsql"

  create_table "meetups", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "datetime"
  end

  create_table "reports", force: :cascade do |t|
    t.string "theme"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "speaker_id"
    t.bigint "meetup_id"
    t.index ["meetup_id"], name: "index_reports_on_meetup_id"
    t.index ["speaker_id"], name: "index_reports_on_speaker_id"
  end

  create_table "speakers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "reports", "meetups"
  add_foreign_key "reports", "speakers"
end
