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

ActiveRecord::Schema.define(version: 2018_07_29_051253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "documents", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "scope_id"
    t.index ["scope_id"], name: "index_documents_on_scope_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "job_no"
    t.string "name"
    t.string "address"
    t.string "job_type"
    t.string "administrator"
    t.string "px"
    t.string "pm"
    t.string "gs"
    t.string "warranty_period"
    t.string "textura"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scopes", force: :cascade do |t|
    t.bigint "job_id"
    t.string "cost_code"
    t.string "description"
    t.string "scope_type"
    t.string "subcontractor"
    t.string "contract_no"
    t.string "project_name"
    t.string "document_type"
    t.string "link_contract"
    t.string "governing_contract"
    t.string "vendor"
    t.string "vendor_prequalified"
    t.string "required_documentation"
    t.string "legal_name"
    t.string "address"
    t.string "authorized_agent_1"
    t.string "authorized_agent_2"
    t.string "workers"
    t.string "compensation"
    t.string "bond_requirement"
    t.string "default_retainage"
    t.string "insurance_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_scopes_on_job_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "documents", "scopes"
  add_foreign_key "scopes", "jobs"
end
