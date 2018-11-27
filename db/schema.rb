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

ActiveRecord::Schema.define(version: 2018_11_27_142216) do

  create_table "abouts", force: :cascade do |t|
    t.string "name"
    t.string "mainText"
    t.string "secondaryText"
    t.string "finalText"
    t.string "imageOne"
    t.string "imageTwo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "add_email_to_customers", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.integer "addressId"
    t.string "address"
    t.string "city"
    t.integer "province_id"
    t.string "postalCode"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["province_id"], name: "index_addresses_on_province_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "fax"
    t.integer "address_id"
    t.string "text"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_contacts_on_address_id"
  end

  create_table "customers", force: :cascade do |t|
    t.integer "customerId"
    t.string "name"
    t.decimal "discount"
    t.string "image"
    t.integer "address_id"
    t.integer "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.index ["address_id"], name: "index_customers_on_address_id"
    t.index ["order_id"], name: "index_customers_on_order_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "employeeId"
    t.string "position"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_employees_on_customer_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "orderItemId"
    t.integer "order_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity"
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["product_id"], name: "index_order_items_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "orderId"
    t.date "date"
    t.integer "productCount"
    t.string "totalPrice"
    t.string "decimal"
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status_id"
    t.integer "cutomer_id"
    t.integer "customer_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["cutomer_id"], name: "index_orders_on_cutomer_id"
    t.index ["status_id"], name: "index_orders_on_status_id"
  end

  create_table "product_categories", force: :cascade do |t|
    t.integer "product_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_product_categories_on_category_id"
    t.index ["product_id"], name: "index_product_categories_on_product_id"
  end

  create_table "product_statuses", force: :cascade do |t|
    t.string "productStatusId"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "productId"
    t.string "description"
    t.integer "count"
    t.decimal "weight"
    t.decimal "price"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "status_id"
    t.integer "product_status_id"
    t.index ["product_status_id"], name: "index_products_on_product_status_id"
    t.index ["status_id"], name: "index_products_on_status_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.integer "provinceId"
    t.string "name"
    t.decimal "taxRate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.integer "statusId"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
