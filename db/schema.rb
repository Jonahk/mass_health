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

ActiveRecord::Schema.define(version: 20131212163409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "town_health_records", force: true do |t|
    t.string   "geography"
    t.integer  "total_pop"
    t.integer  "age_0_19"
    t.integer  "age_65_plus"
    t.integer  "per_capita_income"
    t.integer  "below_200_percent_poverty"
    t.float    "percent_below_200_percent_poverty"
    t.float    "percent_adequacy_prenatal_care"
    t.float    "percent_c_section_deliveries"
    t.integer  "number_of_infant_deaths"
    t.float    "infant_mortality_rate_deaths"
    t.float    "percent_low_birthweight"
    t.float    "percent_multiple_births"
    t.float    "percent_publicly_financed_prenatal_care"
    t.float    "percent_teen_births"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
