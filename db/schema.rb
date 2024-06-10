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

ActiveRecord::Schema[7.1].define(version: 2024_05_29_150913) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inventories", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.string "changetype"
    t.integer "quantitychange"
    t.integer "newstocklevel"
    t.datetime "changedate", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_inventories_on_product_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "paymentmethod"
    t.decimal "amount", precision: 10, scale: 2
    t.datetime "paymentdate", precision: nil
    t.bigint "shop_transaction_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_transaction_id"], name: "index_payments_on_shop_transaction_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "category"
    t.decimal "price", precision: 10, scale: 2
    t.string "sku"
    t.integer "stocklevel"
    t.integer "reorderlevel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.string "reporttype"
    t.date "reportdate"
    t.text "reportcontent"
    t.datetime "generatedat", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shop_transaction_products", force: :cascade do |t|
    t.bigint "shop_transaction_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.decimal "unitprice", precision: 10, scale: 2
    t.decimal "totalprice", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_shop_transaction_products_on_product_id"
    t.index ["shop_transaction_id"], name: "index_shop_transaction_products_on_shop_transaction_id"
  end

  create_table "shop_transactions", force: :cascade do |t|
    t.date "date"
    t.decimal "total", precision: 10, scale: 2
    t.string "paymentmethod"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shop_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "role"
    t.string "fullname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "inventories", "products"
  add_foreign_key "payments", "shop_transactions"
  add_foreign_key "shop_transaction_products", "products"
  add_foreign_key "shop_transaction_products", "shop_transactions"
  add_foreign_key "shop_transactions", "users"
end
