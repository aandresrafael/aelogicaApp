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

ActiveRecord::Schema.define(version: 2019_07_16_232203) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "channel_rates", id: :string, force: :cascade do |t|
    t.string "base_rate_type"
    t.string "modifier_type"
    t.boolean "turned_on"
    t.boolean "turned_off_on"
    t.float "rate"
    t.float "amount"
    t.string "channel_name"
    t.string "channel_id"
    t.string "facility_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_applications", id: :string, force: :cascade do |t|
    t.string "name"
    t.boolean "channel_rates_on"
    t.boolean "internal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discount_plan_controls", id: :string, force: :cascade do |t|
    t.string "kind"
    t.integer "min_value"
    t.integer "max_value"
    t.boolean "deleted"
    t.boolean "deleted_on"
    t.string "requirements_text"
    t.integer "applicable_discount_plans_count"
    t.string "unit_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discount_plan_discounts", id: :string, force: :cascade do |t|
    t.string "discount_type"
    t.integer "month_number"
    t.integer "amount"
    t.integer "minimum_amount"
    t.integer "maximum_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discount_plans", id: :string, force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "public_description"
    t.string "availability_text"
    t.string "requirements_text"
    t.string "kind"
    t.boolean "min_occupancy_required"
    t.integer "min_occupancy_months"
    t.boolean "prepay_required"
    t.integer "prepay_months"
    t.date "start_date"
    t.date "end_date"
    t.boolean "auto_apply"
    t.string "promotion_type"
    t.boolean "deleted"
    t.boolean "turned_on"
    t.boolean "available_for_all_facilities"
    t.boolean "round_to_nearest"
    t.boolean "hide_from_website"
    t.boolean "move_in_only"
    t.string "tenant_account_kind_id"
    t.boolean "existing_tenant_only"
    t.integer "priority"
    t.string "role_permission"
    t.string "always_discount_plan_discount_id"
    t.string "unit_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoiceable_fees", id: :string, force: :cascade do |t|
    t.string "product_code"
    t.string "kind"
    t.string "description"
    t.boolean "required_at_move_in"
    t.boolean "required_at_transfer"
    t.integer "amount"
    t.string "short_description"
    t.boolean "show_in_sales_center"
    t.integer "tax_total"
    t.integer "total"
    t.string "unit_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unit_amenities", id: :string, force: :cascade do |t|
    t.string "name"
    t.string "short_code"
    t.boolean "show_in_sales_center_filter_dropdown"
    t.string "unit_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unit_groups", id: :string, force: :cascade do |t|
    t.float "price", default: 0.0
    t.string "group_key"
    t.string "name"
    t.integer "available_units_count"
    t.integer "total_units_count"
    t.integer "total_non_excluded_units_count"
    t.string "size"
    t.integer "standard_rate"
    t.integer "floor"
    t.float "reduced_price"
    t.integer "occupancy_percent"
    t.integer "area"
    t.integer "length"
    t.integer "width"
    t.integer "height"
    t.float "due_at_move_in"
    t.float "due_at_move_in_without_fees"
    t.float "due_monthly"
    t.string "attribute_description"
    t.string "description"
    t.float "average_rent"
    t.string "active_rate_type"
    t.string "channel_rate_id"
    t.string "unit_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unit_types", id: :string, force: :cascade do |t|
    t.string "name"
    t.boolean "deleted"
    t.string "internal_account_code"
    t.string "code_and_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", id: :string, force: :cascade do |t|
    t.float "price"
    t.string "name"
    t.string "description"
    t.integer "width"
    t.integer "length"
    t.integer "height"
    t.integer "door_height"
    t.integer "door_width"
    t.string "door_type"
    t.string "access_type"
    t.integer "floor"
    t.string "size"
    t.integer "area"
    t.integer "standard_rate"
    t.integer "managed_rate"
    t.boolean "available_for_move_in"
    t.boolean "rentable"
    t.string "status"
    t.string "payment_status"
    t.string "current_ledger_id"
    t.string "current_tenant_id"
    t.string "combination_lock_number"
    t.string "attribute_description"
    t.boolean "deleted"
    t.boolean "damaged"
    t.boolean "complimentary"
    t.string "unit_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
