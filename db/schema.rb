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

ActiveRecord::Schema.define(version: 2022_06_02_214604) do

  create_table "libsaml_identity_providers", force: :cascade do |t|
    t.string "identifier", null: false
    t.string "entity_id", null: false
    t.string "sso_url", null: false
    t.text "certificate", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entity_id"], name: "index_libsaml_identity_providers_on_entity_id", unique: true
    t.index ["identifier"], name: "index_libsaml_identity_providers_on_identifier", unique: true
  end

end
